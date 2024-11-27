require("dotenv").config();
const { defineConfig } = require("cypress");
const selectors = require("./cypress/fixtures/selectors.json");
const endpoints = require("./cypress/fixtures/endpoints.json");

module.exports = defineConfig({
  env: {
    JUICESHOP_URL: process.env.JUICESHOP_URL,
    selectors,
    endpoints,
  },
  e2e: {
    screenshotsFolder: "cypress/results/screenshots",
    supportFile: "cypress/support/main.js",
    specPattern: [
      "cypress/tests/**/*.cy.js",
      "cypress/commands_tests/**/*.cy.js",
    ],
    fixturesFolder: "cypress/fixtures",
    chromeWebSecurity: false,
  },
});
