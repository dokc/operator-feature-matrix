# Operator Feature Matrix (OFM)

The *Operator Feature Matrix* (OFM) is a project from the [Data on Kubernetes (DoK) Community](https://dok.community/) to create standardized and vendor-neutral _feature matrix_ for various Kubernetes operators that manage stateful workloads. The key concepts behind the project are:

* **The Feature Matrix**. A categorized and structured set of features that a given operator (for a particular technology) may support.
* **Standardized features**. Define terminology for features so that naming is standardized.
* **Vendor neutral**. OFM is a project started by the DoK with contributions from various organizations and contributors.


The main goals of the OFM are:
* Allow end users to quickly identify if a given operator supports or not a given feature or set of features.
* Provide clear and standardize feature naming to avoid end users being confused about the meaning of particular features provided by an operator.
* Enable end users to produce objective, side-by-side comparisons of the features implemented by different operators (for a given technology).


The OFM is developed by consensus, and standardized; submissions of the features implemented by each vendor at a particular operator release are expected to be contributed by the vendors themselves or their respective Communities.


The OFM is technology-dependent, as most of the features of a given technology (e.g. the Postgres relational database) are different from the features end users expect from another different technology (e.g. Kafka). As of today, there is one OFM implemented:

* [Postgres](postgres)

It is expected that other technologies may add their respective OFM to this project, following similar directions to the one already existing. However, it is also expected that once a few technologies and their respective OFM are added, a common subset of features that may span across all potential technologies may be identified. In this case, a cross-technology OFM subset could be created, and existing projects (partially) retrofitted to that model, so that technology-independent features are identified as such.
