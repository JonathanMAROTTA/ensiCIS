/*
 * Ce fichier contient des commandes personnalisées pour remplir des formulaires.
 * Ces commandes peuvent être utilisées pour automatiser les tests de saisie de données.
 */
const selectors = Cypress.env("selectors");

Cypress.Commands.add("fillContactCaptcha", () => {
  // Feedback needed captcha at /#/contact
  cy.get(selectors.contact.captcha.question)
    .invoke("text")
    .then((captchaCode) => {
      const captchaResult = eval(captchaCode); // Résout l'expression mathématique
      cy.get(selectors.contact.captcha.controller).type(
        captchaResult.toString()
      );
    });
});

Cypress.Commands.add("fillContactRatingValue", (target) => {
  // Feedback rating at /#/contact
  cy.get(selectors.contact.rating.controller).then(($slider) => {
    const min = Number($slider.attr(selectors.contact.rating.attributes.min));
    const max = Number($slider.attr(selectors.contact.rating.attributes.max));

    if (target < min || target > max) {
      throw new Error(
        `La valeur cible ${target} est en dehors de la plage (${min}-${max}).`
      );
    }

    const sliderWidth = $slider[0].getBoundingClientRect().width;
    const position = ((target - min) / (max - min)) * sliderWidth;

    cy.wrap($slider).click(position, 0, { force: true });
  });
});

Cypress.Commands.add(
  "fillRegisterForm",
  (email, password, question, answer) => {
    // Register form at /#/register
    cy.get(selectors.register.email).type(email);
    cy.get(selectors.register.password).type(password);
    cy.get(selectors.register.repeatPassword).type(password);
    cy.get(selectors.register.securityQuestion).click();
    cy.get(selectors.register.securityOption).contains(question).click();
    cy.get(selectors.register.securityAnswer).type(answer);
  }
);

Cypress.Commands.add("fillLoginForm", (email, password) => {
  // Formulaire de connexion à /#/login
  cy.get(selectors.login.email).type(email);
  cy.get(selectors.login.password).type(password);
});
