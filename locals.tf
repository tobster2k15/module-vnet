locals{
    common_tags = {
    OPE                 = "${var.OPE}"
    "Cost Center"       = "${var.CostCenter}"
    "Responsible Team"  = "${var.ResponsibleTeam}"
    "Deployed by"       = "${var.deployment}"
    "Environment"       = "${var.tag_env_prd}"
    "Usecase"           = "${var.usecase_for_desc}"
}

#Dev Tags
common_tags_dev = {
    OPE                 = "${var.OPE}"
    "Cost Center"       = "${var.CostCenter}"
    "Responsible Team"  = "${var.ResponsibleTeam}"
    "Deployed by"       = "${var.deployment}"
    "Environment"       = "${var.tag_env_dev}"
    "Usecase"           = "${var.usecase_for_desc}"
}
}
