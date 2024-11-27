const baseUrl = Cypress.env("JUICESHOP_URL");
const loginApiEndpoint = "/rest/user/login";

describe("Brute Force Attack", () => {
  const inputNumberToCheck = 100;
  const timeoutDuration = 20;

  it(`Simulate a brute force attack. Should succeed if ${
    inputNumberToCheck + 1
  } try under ${timeoutDuration} seconds.`, () => {
    const targetEmail = "admin@juice-sh.op";
    const targetPassword = "admin123";
    const startTime = Date.now();

    for (let i = 0; i < inputNumberToCheck; i++) {
      // Check if the test has exceeded the timeout
      const elapsedTime = (Date.now() - startTime) / 1000;
      if (elapsedTime > timeoutDuration) {
        throw new Error(
          `Le test a dépassé la limite de ${timeoutDuration} secondes.`
        );
      }

      // Stop simulating brute force attack
      if (i >= inputNumberToCheck) {
        cy.log("Tous les mots de passe ont été testés.");
        return;
      }

      // Try to login
      cy.requestLogin(targetEmail, Date.now()).then((response) => {
        expect(response.status).to.not.equal(200);
      });
    }

    cy.loginAPI(targetEmail, targetPassword);
    cy.verifyLoginByAPI(targetEmail);
  });
});
