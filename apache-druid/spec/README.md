# Apache Druid OFM Specification


The contents of this directory are structured as follows:

* [feature_matrix.yaml](feature_matrix.yaml). The feature matrix itself. It is a YAML file that serves as the source of truth for the Apache Druid OFM features. It is encoded in a machine parsable format to allow other files to be derived from it, as well as to allow automatic processing of the features.
* [feature_matrix.md](feature_matrix.md). This file acts as a "view" to the matrix, providing a convenient way to represent it visually. This file should not be edited directly, as it is generated automatically from the [feature_matrix.yaml](feature_matrix.yaml) file. This render is intented to aid in reading and understanding the specification itself, but it is not expected to be consumed directly by end users. Instead, end users are expected to view the submissions made by vendors or, better, the Markdown or web renderings of such submissions.
* [yaml2md](yaml2md). Directory that contains the script to render the Markdown feature matrix from the YAML feature matrix.


## Description of the Apache Druid feature matrix

The OFM is contained in the [feature_matrix.yaml](feature_matrix.yaml) file. The most relevant fields of the document are:
* `.metadata`. Contains information about the OFM Specification, including its version and version release date.
* `.categories`. Features are classified first into categories. It is an array of features. Each category has an `.id` and a `.name`. The `.id` is an immutable and unique four characters identifier, and the `.name` is a mutable and user-friendly definition of the category.
* `.categories[].features`. An array that contains all the features for every category.
* `.categories[].features[]`. Each feature. Similarly to categories, they contain an `.id` (in this case five characters) and a `.name`. They also contain other relevant fields:
     * `type`. It is the data type of the value that vendors will provide on the submission for this particular feature. For most of the features this field will be `boolean`, which is the easiest way for end users to visually read a comprehensive feature matrix with many features. Some other features require more details, and may have `enum`, `string` or even `string_array` types for this field.
     * `description`. It is the end user facing description of the feature. May include Markdown syntax to enhance readability.
     * `vendor_compliance`. It is a field for vendors that provides clarification on how the feature is expected to be implemented in order to achieve compliance with the feature. It also accepts Markdown formatting.
     * `main`. It is a cross-categories field to identify features that are considered more important or "core" to the whole OFM. They may be rendered independently of the others to signify their relevance.



