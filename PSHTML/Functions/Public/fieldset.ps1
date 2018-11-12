Function fieldset {
    <#
    .SYNOPSIS
    Create a fieldset title in an HTML document.

    .EXAMPLE

    fieldset
    .EXAMPLE
    fieldset "woop1" -Class "class"

    .EXAMPLE
    $css = @"
        "p {color:green;}
        h1 {color:orange;}"
    "@
    fieldset {$css} -media "print" -type "text/css"

    .Notes
    Author: Stéphane van Gulick
    Current version 3.2
    History: 
        2018.11.11;@ChristopheKumor;Updated to version 3.2
        2018.10.30;@ChristopheKumor;Updated to version 3.0
        2018.05.09;@Stephanevg; Creation
    .LINK
        https://github.com/Stephanevg/PSHTML
    #>
    [Cmdletbinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [AllowEmptyString()]
        [AllowNull()]
        $Content,

        [switch]$disabled,

        [String]$form,

        [String]$name,

        [AllowEmptyString()]
        [AllowNull()]
        [String]$Class,

        [String]$Id,

        [Hashtable]$Attributes
    )


    $tagname = "fieldset"

    Set-HtmlTag -TagName $tagname -TagType NonVoid -Cmdlet $PSCmdlet



}

