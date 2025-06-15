**Refactor gradually using the Strangler Fig pattern:**

**Phase 1: Add a new interface (no changes to existing code)**

- Define the new interface only
- Leave the existing implementation untouched

**Phase 2: Implement an adapter**

- Wrap the existing implementation with the new interface
- Reuse existing tests

**Phase 3: Gradually replace internal implementations**

- Replace one method at a time with a new implementation
- Run tests after each replacement
