[#ftl]

<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>

[#list vizitky]
    [#items as vizitka]
        <div class="seznam">
            <a href="/detail/${vizitka?index}">
                <div class="vizitka">
                    <div class="jmeno">${vizitka.jmeno}</div>
                    <div class="firma">${vizitka.firma}</div>
                    <div class="udaje">
                        <div class="adresa">
                            <div>${vizitka.ulice}</div>
                            <div>${vizitka.obecPsc}</div>
                        </div>
                        <div class="kontakty">
                            [#if vizitka.email??]
                                <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                            [/#if]
                            [#if vizitka.telefon??]
                                <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                            [/#if]
                            [#if vizitka.web??]
                                <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                            [/#if]
                        </div>
                    </div>
                </div>
            </a>
        </div>
    [/#items]
[#else]
    <div>
        <em>Seznam vizitek je prázdný.</em>
    </div>
[/#list]

</body>
</html>