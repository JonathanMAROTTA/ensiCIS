const baseUrl = Cypress.env("JUICESHOP_URL");

describe("Tests on API requests commands", () => {
  const clientEmail = "mc.safesearch@juice-sh.op";
  const clientPassword = "Mr. N00dles";
  const dependencies = {};

  it("Login API", () => {
    cy.requestLogin(clientEmail, clientPassword).then((loginResponse) => {
      expect(loginResponse.status).to.eq(200);
      expect(loginResponse.body).to.have.property("authentication");
      expect(loginResponse.body.authentication).to.have.property("token");

      dependencies["token"] = loginResponse.body.authentication.token;
    });
  });

  it("Register API", () => {
    const email = `test${Date.now()}@test.com`;
    const password = "test";
    const question = 1;
    const answer = "test";

    cy.requestRegister(email, password, question, answer).then(
      (registerResponse) => {
        expect(registerResponse.status).to.eq(201);
      }
    );
  });

  it("WhoAmI API [Require LoginAPI]", () => {
    expect(dependencies).to.have.property("token");
    const token = dependencies["token"];

    cy.requestLogin(clientEmail, clientPassword).then((loginResponse) => {
      cy.requestWhoAmI(token).then((whoamiResponse) => {
        expect(whoamiResponse.status).to.eq(200);
        expect(whoamiResponse.body).to.have.property("user");
        expect(whoamiResponse.body.user).to.have.property("email");
        expect(whoamiResponse.body.user.email).to.eq(clientEmail);
      });
    });
  });
});
