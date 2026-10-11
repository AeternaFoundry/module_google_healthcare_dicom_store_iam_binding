variable "healthcare_dicom_store_iam_bindings" {
  description = <<EOT
Map of healthcare_dicom_store_iam_bindings, attributes below
Required:
    - dicom_store_id
    - members
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    dicom_store_id = string
    members        = set(string)
    role           = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

