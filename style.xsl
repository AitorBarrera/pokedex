<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">

<head>
    <title>Pokedex</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />

    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/styles.css" />
</head>

<body>
    <div class="container w-100 p-0 sombra">
        <header>
            <!-- place navbar here --> 
        </header>
        <main>
            <div class="w-100 position-relative">
                <div class="portada position-absolute w-100 h-100 z-n1"></div>
                <div class="text-white text-center py-5 px-5">
                    <h1 class="bg-black p-1 opacity-50">POKEDEX</h1>
                    <p class="fs-3 line-height-1">
                    <xsl:value-of select="pokedex/definition"/>
                    </p>
                </div>
            </div>
            <div class="w-100">
                <div class="cristalTipos position-absolute w-100 h-100 z-n1"></div>
                <h2 class="p-1 opacity-50 text-center text-white fw-bolder fs-1 pt-4">
                    TYPES
                </h2>
                <div class="container p-4">
                    <div class="row justify-content-between">
                    <xsl:for-each select="pokedex/types/type">
                        <div class="col-12 col-sm-6 col-md-4 px-5 my-3 text-center">
                            <div class="border border-4 border-white rounded-4 p-1">
                                <img class="img-fluid w-auto pt-2" src="img/{.}_type.png" alt="Title" />
                                <p class="card-text text-white fs-5 py-0 text-capitalize"><xsl:value-of select="."/></p>
                            </div>
                        </div>
                    </xsl:for-each>
                    </div>
                </div>
                <h2 class="p-1 opacity-50 text-center text-white fw-bolder fs-1 pt-4">
                    POKEMONS
                </h2>
                <div class="container p-4">
                    <div class="row justify-content-between">
                    <xsl:for-each select="pokedex/pokemon">
                        <div class="col-12 col-md-6 px-5 my-4 text-center">
                            <div class="border border-4 border-white rounded-4">
                                <div class="row justify-content-between p-5 align-items-center">
                                    <div class="col-12 col-md-6 text-white">
                                        <div>
                                            <img class="img-fluid opacity-75" src="https://assets.pokemon.com/assets/cms2/img/pokedex/detail/{dex}.png" alt="Title" />
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-6 text-white text-center text-md-start">
                                        <h5 class="fw-bold"><xsl:value-of select="species"/></h5>
                                        <div class="my-4 fs-5">
                                            <p>HP: <xsl:value-of select="baseStats/HP"/>
                                                <br/>ATK: <xsl:value-of select="baseStats/ATK"/>
                                                <br/>DEF: <xsl:value-of select="baseStats/DEF"/>
                                                <br/>SPD: <xsl:value-of select="baseStats/SPD"/>
                                                <br/>SATK: <xsl:value-of select="baseStats/SATK"/>
                                            </p>
                                        </div>
                                        <div class="w-100">
                                            <xsl:for-each select="types/type">
                                                    <img class="img-fluid w-25 me-2" src="img/{.}_type.png" alt="Title" />
                                            </xsl:for-each>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </xsl:for-each>
                    </div>
                </div>
            </div>
        </main>
        <footer class="bg-white opacity-50">
            <div class="row text-center py-4 align-items-center">
                <h2 class="m-0 px-0 col-11">
                    EL MUNDO POKEMON EN AZARQUIEL - SIDAM - S1ASIR
                </h2>
                <div class="px-0 col-1">
                    <img src="img/Pokeball.png" alt=" " class="img-fluid" />
                </div>
            </div>
        </footer>
    </div>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>

</xsl:template>
</xsl:stylesheet>