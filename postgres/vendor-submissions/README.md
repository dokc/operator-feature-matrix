# Postgres OFM Vendor Submission

This directory contains:

* [vendor-submission-template.yaml](vendor-submission-template.yaml). This is the file that should be copied as a template to fill in the details of each vendor's submission. Note that this file should not be edited directly, as it is derived from the source [feature matrix](../spec/feature_matrix.yaml).
* [vendor-submission-template-generator](vendor-submission-template-generator). Script and helper file to generate the `vendor-submission-template.yaml` from the source feature matrix.


## Vendor Submission Guidelines

To produce a vendor submission, please observe the following rules:
* Submissions are tied to a particular release of the vendor's operator. Vendors are expected to produce a new submission for every major release of their operator. If no significant change across operator releases is produced in terms of the features supported, submission may be skipped. The rendering of the vendor's OFM for end users will do a best effort to always show the "latest" version (if semantic versioning or similar versioning style is use) of a given vendor's submissions. It is however preferrable to always submit a version with each operator's release. It is suggested for vendors to treat the YAML file for the submission as another artifact of their release and add it to their standard release procedure.
* Create a pull request against this repository with the submission. The filename for the submission must comply with the following naming format: `postgres/vendor-submissions/${vendor_name_lowercase}/${vendor_name_lowercase}-${ofm_version}-${operator_release_version}.yaml`, and be based on the `vendor-submission-template.yaml` of the given OFM version.
* Observe the indications in the `.vendor_compliance` field of the OFM to determine whether the operator's release is compliant (implements) or not a given feature.
* No bullshit, no marketing. Make objective assessments, and don't include marketing or subjective observations as part of the submission.

The relevant fields of the submission template are:
* Comments. They are provided as indications for the vendor. They must be left as part of the submission, without removing the comment character.
* `.value`. It is the main value to provide for the feature, and it must be valid according to the `.type` field. Required.
* `.references`. A string array. Ideally, a single string, provide more than one only if strictly necessary. Each reference must be a Markdown-formatted URL. The text part of the URL should be a short or very short text and the location the address of a webpage or section of a webpage that shows or demonstrates the implementation of the given feature. To keep the text short (for readability purposes) either a short version of the title of the documentation's section may be used, or simple words like `Documentation` or `Doc`. This field is not required, but of high value to end users if provided.
* `.comments`. An optional free-form text field for the vendor to provide more detail information about the compliance/non compliance and possible justifications. Please observe the no bullshit and no marketing rules. Comments should be as concise and objective as possible. Markdown formatting may be used.
* Unimplemented features can be left empty; be removed from the submission; or be left unimplemented (setting the `.value` field to `false` for boolean values or empty for every other type) and providing further information in the `.comments` field about why it is not (or partially) implemented. Empty (null) value is therefore treated as "unimplemented".

