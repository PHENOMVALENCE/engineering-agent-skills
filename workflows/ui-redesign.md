# UI Redesign Workflow

1. Inspect the current page, component tree, design system, styling approach, data dependencies, forms, routing, and localization.
2. Define the primary user objective and information hierarchy.
3. Preserve backend behavior and working interactions unless product requirements explicitly change them.
4. Establish/refine tokens for typography, spacing, color, borders, radii, and states.
5. Redesign high-impact structure first, then component details.
6. Implement responsive behavior intentionally for mobile, tablet, and desktop.
7. Cover loading, empty, validation, error, selected, disabled, and success states.
8. Verify keyboard navigation, focus states, labels, semantic HTML, contrast, and touch targets.
9. Test with realistic content lengths and relevant browser widths.
10. Run project checks, review visual consistency, remove obsolete CSS safely, and include screenshots in the PR.

Prefer hierarchy and usability over decorative effects. Avoid unnecessary gradients, giant hero sections, excessive shadows, or animation unless required by the design direction.
