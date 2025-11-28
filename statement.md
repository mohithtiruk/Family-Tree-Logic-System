# Problem Statement

The challenge addressed by the FamiLog system is the inefficient and error-prone manual definition of complex familial relationships. We aim to replace explicit statement (e.g., "X is the grandfather of Y") with a foundational knowledge base (gender and direct parentage) and a set of logical rules. The system must use these rules to automatically infer all transitive and generational relationships, ensuring the knowledge base remains consistent and minimal.

# Scope of the Project

The scope of the project is strictly confined to defining, loading, and querying a family tree structure within the Prolog logical programming environment.

-In Scope-

Defining all fundamental facts (gender and parent-child relations).

Implementing rules for core kinship terms (father, mother, sibling, grandparent, uncle, aunt).

Implementing a recursive rule (ancestor_of) to handle multi-generational queries.

The system is designed for console-based interaction (query and response).

-Out of Scope-

Developing a graphical user interface (GUI).

Handling external data storage or integration with other databases (e.g., SQL).

Implementing rules for marriage, divorce, or in-law relations.

Dealing with complex adoption or step-parent situations.

# Target Users

The primary target users for this system are individuals engaged in fields requiring logical inference and knowledge representation:

Computer Science Students: Learning logic programming principles, recursion, and knowledge-based systems.

Academics/Researchers: Demonstrating how declarative logic can model complex relational data sets.

Hobbyists/Enthusiasts: Exploring genealogical data modeling using Prolog's built-in inference engine.

# High-Level Features

The FamiLog system provides the following capabilities to its users:

Fundamental Fact Storage: Stores basic information about individuals and their immediate parent-child connections.

Basic Kinship Inference: Automatically identifies father_of, mother_of, brother_of, and sister_of relationships based on gender and shared parenthood.

Transitive Relationship Inference: Calculates fixed-depth relations like grandfather_of, grandmother_of, uncle_of, and aunt_of.

Recursive Ancestry Search: Uses recursion to resolve the ancestor_of relation, allowing users to find all preceding generations for any individual.

Ad-Hoc Querying: Provides a robust command-line interface for users to test any defined rule by providing known arguments or using variables to find unknown relationships.
