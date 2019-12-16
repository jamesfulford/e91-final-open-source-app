# E91 DevOps at Harvard, Final Project


The DevOps tooling are (according to best practice) stored in private repository.

This is just the web application the tooling is built to support.

# Available Scripts

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

In the project directory, you can run:

## CI/CD Scripts

### `bash install.sh`

- Sets correct node/npm version.
- Installs dependencies
- Gives exit code 0 on success, other on failure.

### `bash test.sh`

- Runs unit tests on application
- Gives exit code 0 on success, other on failure.

### `bash build.sh`

- Builds application into static website
- Outputs files into `build` directory.
- Gives exit code 0 on success, other on failure.

### `bash e2e.sh [baseUrl]`

- Runs Cypress e2e tests in CI mode (within a container), pointing at the given URL.
- By default, runs with baseUrl of http://localhost:8089 (intended for `yarn start` or for locally-built container)

### Build an image locally:
Build the app, then build an image based on the build results.

Then, run the image in the background (-d, daemon) on port 8089 (-p8089:80, external is 8089, internal is 80).

Then, open your browser to localhost:8089 (python -m webbrowser -t is a neat shortcut)

```bash
bash ./build.sh && docker build -t e91-final-open-source-app:local .
docker run -d -p8089:80 e91-final-open-source-app:local

# Open your web browser to 8089
python -m webbrowser -t http://localhost:8089
```

## Development

### `yarn start`

Runs the app in the development mode.<br />
Open [http://localhost:8089](http://localhost:8089) to view it in the browser.

The page will reload if you make edits.<br />
You will also see any lint errors in the console.

### `yarn test`

Launches the test runner in the interactive watch mode.<br />
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `yarn cypress`

Launches interactive [Cypress test runner](https://www.cypress.io/), a developer-friendly end-to-end web app testing framework.

### `yarn build`

Builds the app for production to the `build` folder.<br />
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br />
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `yarn eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (Webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).
