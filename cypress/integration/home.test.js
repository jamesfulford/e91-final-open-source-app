/// <reference types="Cypress" />

const View = {
    courseLink: 'a.App-link',
};

describe('Home page', () => {
    it('should render the course name', () => {
        cy.visit('');
        cy
            .get(View.courseLink)
            .contains('Harvard E91');
    });
});
