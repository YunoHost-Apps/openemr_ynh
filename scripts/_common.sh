#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

nodejs_version="22"

composer_version="2.8.9"

post_install_clean() {
local items=(
        "admin.php"
        "acl_setup.php"
        "acl_upgrade.php"
        "sl_convert.php"
        "sql_patch.php"
        "sql_upgrade.php"
        "gacl/setup.php"
        "ippf_upgrade.php"
        "tests"
        "contrib/cqm_valueset"
        "contrib/dsmiv"
        "contrib/forms"
        "contrib/portal_templates"
        "contrib/util"
        "contrib/venom"
    )

    for item in "${items[@]}"; do
            ynh_safe_rm "$item"
    done
}
