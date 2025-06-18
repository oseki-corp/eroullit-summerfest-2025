# Documentation Assessment and Improvement Prompt

## Instructions for AI Agents

This prompt guides you through systematically evaluating and improving the documentation of the Typespeed project, a terminal-based typing game written in C. Follow these steps in sequence, completing each step before moving to the next.

## Step 1: Documentation Coverage Assessment

First, analyze the current documentation coverage by examining these key files/directories:

1. **README** - Basic project information
2. **ARCHITECTURE.md** - Architectural documentation (if exists)
3. **src/** - Source code files and inline documentation
4. **man/** - Manual pages
5. **doc/** - Additional documentation files

For each item, document:
- Existence status (exists/missing)
- Word count (if exists)
- Last modified date (if exists)
- Coverage quality assessment (poor/basic/good/excellent)

Use this table format for your assessment:
```
| File/Directory | Status | Word Count | Last Modified | Quality Assessment |
|---------------|--------|------------|--------------|---------------------|
| README        |        |            |              |                     |
| ...           |        |            |              |                     |
```

## Step 2: Documentation Goals Comparison

Compare the current documentation with these target goals:

1. **README.md**
   - Project description and purpose
   - Installation instructions
   - Basic usage guide
   - Features list
   - Dependencies
   - License information

2. **ARCHITECTURE.md**
   - High-level overview of system design
   - Main components with Mermaid diagrams
   - Data flow diagrams
   - Core algorithms explanation
   - Key design decisions

3. **Code Documentation**
   - Header comments for all files
   - Function descriptions with parameters and return values
   - Complex algorithm explanations
   - Meaningful variable names and inline comments

## Step 3: Documentation Gap Analysis

Based on your comparison, create a detailed list of documentation gaps organized by priority:

1. **Critical Gaps** - Documentation missing for core functionality
2. **Important Gaps** - Documentation that would significantly improve understanding
3. **Enhancement Opportunities** - Areas where documentation could be extended

For each item in your list, include:
- Brief description of the missing documentation
- Estimated effort (low/medium/high)
- Required technical expertise (low/medium/high)

## Step 4: Issue Creation Planning

Plan a series of GitHub issues to address the documentation gaps. Follow these guidelines:

1. **Issue Scope**:
   - Each issue should be completable in under 4 hours
   - Issues should be self-contained with clear boundaries
   - Avoid dependencies between issues where possible

2. **Issue Batching**:
   - Group related documentation tasks logically
   - Batch by component or documentation type
   - Aim for 5-10 issues total, depending on project size

3. **Issue Format**:
   - Title: Clear, concise description of the documentation task
   - Description: Specific details of what needs to be documented
   - Acceptance Criteria: Define when the issue is considered complete
   - References: Link to relevant files/code

## Step 5: Issue Templates

For each documentation gap category, create sample issue templates:

### File Documentation Issue Template
```markdown
## Documentation Task: [Brief Description]

Add comprehensive documentation for [file/component name]

### Details
- Location: [file path]
- Current status: [brief assessment]
- Required sections: [list sections]

### Acceptance Criteria
- [ ] File header comment explaining purpose
- [ ] All functions documented with parameters and return values
- [ ] Complex algorithms explained with comments
- [ ] Example usage provided where appropriate

### Out of Scope
- Refactoring the code
- Adding new features
- Changing existing functionality
```

### ARCHITECTURE.md Component Template
```markdown
## Add [Component Name] to ARCHITECTURE.md

Document the [component name] in the architecture documentation.

### Details
Create a section in ARCHITECTURE.md covering:
- Purpose and responsibility of the component
- Interaction with other components
- Mermaid diagram showing internal structure
- Key algorithms and data structures

### Acceptance Criteria
- [ ] Component overview section added
- [ ] Mermaid diagram included
- [ ] Interfaces with other components documented
- [ ] Design decisions explained

### Out of Scope
- Implementation changes
- Performance optimizations
- Feature additions
```

## Step 6: Execution Plan

Provide a sequential plan for implementing the documentation improvements:

1. Start with the README.md to provide a solid foundation
2. Create ARCHITECTURE.md if it doesn't exist
3. Document high-level components in ARCHITECTURE.md
4. Address critical file/function documentation
5. Add detailed documentation for complex algorithms
6. Create or update examples and usage guides

## Implementation Guidance for AI Agents

- Focus on accuracy over comprehensiveness
- Maintain consistent tone and style across documentation
- Use diagrams where they clarify complex relationships
- Keep documentation synchronized with code
- Avoid speculation about implementation details - verify in code first
- Use existing documentation patterns where established
- Document the "why" not just the "what" and "how"
- Respect project's existing terminology

Remember, the goal is to create documentation that helps developers understand and maintain the code effectively, not to suggest code changes or new features.
