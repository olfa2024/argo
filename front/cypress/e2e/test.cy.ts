describe('Navigation', () => {
    beforeEach(() => {
      cy.visit('http://localhost:4200/');
    });

    it('should navigate to Conseil page', () => {

      cy.contains('نصائح').click({ force: true });
      cy.url().should('include', '/advice');
    });

    it('should navigate to Doaa page', () => {
      cy.contains('أدعية دينية', { timeout: 600000 }).should('be.visible');
      cy.contains('أدعية دينية').click({ force: true });
      cy.url().should('include', '/doaa');
    });
    it('should navigate to Conseil page', () => {
        cy.contains('قسم الشيوخ').click({ force: true });
        cy.url().should('include', '/conseil');
      });



  });
