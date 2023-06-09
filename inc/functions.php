<?php
function get_site_setting($conn, $setting_key='', $prefix='', $postfix=''){
     $sql = "SELECT * FROM site_settings WHERE setting_key = '$setting_key'";
    $result = $conn->query($sql);
    $setting_value = -1;

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            return $prefix.$row["setting_value"].$postfix;
        }
    }
    return $setting_value;
}

function get_page_content($conn, $page_title='', $prefix='', $postfix=''){
    $sql = "SELECT * FROM pages WHERE title = '$page_title'";
    $result = $conn->query($sql);
    $setting_value = -1;

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            return $prefix.$row["description"].$postfix;
        }
    }
    return $setting_value;
}