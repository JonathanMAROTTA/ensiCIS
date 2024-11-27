# JuiceShop OWASP cypress tests

### Environment setup

Create a `.env` file and define :

```
JUICESHOP_URL
```

### Scripts

Launch the entire test folder :

```
npm run cy:tests
```

Launch a test (specify relative path from test folder) :

```
npm run cy:test <file_path.cy.js>
```

Open cypress :

```
npm run cy:open
```

### Tests Not Yet Automatable

`/cypress/hand_test/**`

### Tests skipped : failed to implement (Patched?)

`2-stars : reflected_xss`
`2-stars : view_basket`
`3-stars : admin_registration`
`3-stars : csrf`
