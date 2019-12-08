import React from 'react';
import { render } from '@testing-library/react';
import App from './App';

test('renders Harvard E91 link', () => {
  const { getByText } = render(<App />);
  const linkElement = getByText(/Harvard E91/i);
  expect(linkElement).toBeInTheDocument();
});
