        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card o-hidden border-0 shadow-lg">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row justify-content-center">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Informacion de la Institucion</h1>
                                    </div>
                                    <input type="hidden" id="idreporte" name="idreporte" value="<?php if(!empty($idreporte)) { echo $idreporte; } ?>">
                                    <input type="hidden" id="idinstitucion" name="idinstitucion" value="<?php if(!empty($idinstitucion)) { echo $idinstitucion; } ?>">
                                    <input type="hidden" id="idmedicinanuclear" name="idmedicinanuclear" value="<?php if(!empty($idmedicinanuclear)) { echo $idmedicinanuclear; } ?>">
                                    <input type="hidden" id="idradiodiagnostico" name="idradiodiagnostico" value="<?php if(!empty($idradiodiagnostico)) { echo $idradiodiagnostico; } ?>">
                                    <input type="hidden" id="idradioterapia" name="idradioterapia" value="<?php if(!empty($idradioterapia)) { echo $idradioterapia; } ?>">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="datos_basicos" data-bs-toggle="tab" data-bs-target="#datos_basicos-pane" type="button" role="tab" aria-controls="datos_basicos-pane" aria-selected="true">Datos Basicos</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="medicina_nuclear" data-bs-toggle="tab" data-bs-target="#medicina_nuclear-pane" type="button" role="tab" aria-controls="medicina_nuclear-pane" aria-selected="false">Medicina Nuclear</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="radiodiagnostico" data-bs-toggle="tab" data-bs-target="#radiodiagnostico-pane" type="button" role="tab" aria-controls="radiodiagnostico-pane" aria-selected="false">Radiodiagnostico</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="radioterapia" data-bs-toggle="tab" data-bs-target="#radioterapia-pane" type="button" role="tab" aria-controls="radioterapia-pane" aria-selected="false">Radioterapia</button>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="datos_basicos-pane" role="tabpanel" aria-labelledby="datos_basicos" tabindex="0">
    <h1>Datos Basicos de la Institucion</h1>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre" value="<?php if(!empty($nombre)) { echo $nombre; } ?>">
                <label for="nombre">Nombre de la Institucion</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <?php
                if(empty($tipo)) { $tipo=0; }
                if($tipo==1){
                   echo "<input type=\"text\" class=\"form-control\" placeholder=\"Tipo\" value=\"Publica\" disabled>";
                }
                else{
                   echo "<input type=\"text\" class=\"form-control\" placeholder=\"Tipo\" value=\"Privada\" disabled>";
                }
                ?>
                <label for="tipo">Tipo</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <select class="form-select" id="estado" name="estado">
                    <?php
                    if(!empty($idestado)){
                        echo '<option selected value="'.$idestado.'">'.$estado.'</option>';
                    }
                    else{
                        echo '<option selected value="">Seleccione...</option>';
                    }
                    foreach ($estados as $estado) {
                        echo '<option value="'.$estado->id.'">'.$estado->nombre.'</option>';
                    }
                    ?>
                </select>
                <label for="estado">Estado</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating">
                <select class="form-select" id="municipio" name="municipio">
                    <?php
                    if(!empty($idmunicipio)){
                        echo '<option selected value="'.$idmunicipio.'">'.$municipio.'</option>';
                    }
                    else{
                        echo '<option selected value="">Seleccione...</option>';
                    }
                    ?>
                </select>
                <label for="municipio">Municipios</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <select class="form-select" id="parroquia" name="parroquia">
                    <?php
                    if(!empty($idparroquia)){
                        echo '<option selected value="'.$idparroquia.'">'.$parroquia.'</option>';
                    }
                    else{
                        echo '<option selected value="">Seleccione...</option>';
                    }
                    ?>
                </select>
                <label for="parroquia">Parroquia</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="director" id="director" placeholder="Director" value="<?php if(!empty($director)) { echo $director; } ?>">
                <label for="director">Director de la Institucion</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="telefono" id="telefono" placeholder="Telefono" value="<?php if(!empty($telefono)) { echo $telefono; } ?>">
                <label for="telefono">Telefono de la institucion</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="correo" id="correo" placeholder="Correo" value="<?php if(!empty($correo)) { echo $correo; } ?>">
                <label for="correo">Correo</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <textarea class="form-control" name="direccion" id="direccion" placeholder="Direccion"><?php if(!empty($direccion)) { echo $direccion; } ?></textarea>
                <label for="direccion">Direccion</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="rimfri" id="rimfri" placeholder="Rimfri" value="<?php if(!empty($rimfri)) { echo $rimfri; } ?>">
                <label for="rimfri">Rimfri</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <?php
            if(empty($idinstitucion)){
                echo '<button type="button" id="save_datos" class="btn btn-primary btn-sm">Guardar</button>';
            }
            else{
                echo '<button type="button" id="update_datos" class="btn btn-primary btn-sm">Actualizar</button>';
            }
            ?>
            
        </div>
    </div>
  </div>
  <div class="tab-pane fade" id="medicina_nuclear-pane" role="tabpanel" aria-labelledby="medicina_nuclear" tabindex="0"><h1>Medicina nuclear</h1>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <select class="form-select" id="equipomn" name="equipomn">
                </select>
                <label for="equipomn">Equipos Medicina Nuclear</label>
            </div>
            <p>
               <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#AgregarEquipo" aria-expanded="false" aria-controls="AgregarEquipo">
               Agregar nuevo equipo para seleccionar
               </button>
            </p>
            <div style="min-height: 120px;">
                <div class="collapse collapse-horizontal" id="AgregarEquipo">
                    <div class="card card-body" style="width: 300px;">
                        <div class="row">
                            <div class="col">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" name="nombre_equipo_mn" id="nombre_equipo_mn" placeholder="Nombre">
                                    <label for="nombre_equipo_mn">Nombre</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                               <button class="btn btn-primary" type="button" id="guardar_equipo_mn">Agregar Nuevo equipo para seleccionar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="cantidadmn" id="cantidadmn" placeholder="Cantidad">
                <label for="Cantidad">Cantidad</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <button class="btn btn-primary" type="button" id="save_equipo_mn">Agregar Detalle de Equipos</button>
        </div>
    </div>
    <div class="row" id="detallemn">
        <div class="col">
            <h4>Equipos Medicina Nuclear</h4>
            <div class="table-responsive">
                <table id="tabla_detallemn" class="table table-dark table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Opciones</th>
                        </tr>
                    </thead>
                    <tboby>
                        <tr class="body_detallemn">
                            <td scope="col">#</td>
                            <td scope="col">Nombre</td>
                            <td scope="col">Cantidad</td>
                            <td scope="col">Opciones</td>
                        </tr>
                    </tboby>
                </table>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label for="actimetro">Actimetro?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="actimetro" id="actimetro1" value="1">
            <label class="form-check-label" for="actimetro1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="actimetro" id="actimetro2" value="0">
            <label class="form-check-label" for="actimetro2">No</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating">
                <select class="form-select" id="radiofarmaco" name="radiofarmaco">
                </select>
                <label for="radiofarmaco">Radio Farmacos</label>
            </div>
            <p>
               <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#AgregarRadiofarmaco" aria-expanded="false" aria-controls="AgregarRadiofarmaco">
               Agregar nuevo radiofarmaco para seleccionar
               </button>
            </p>
            <div style="min-height: 120px;">
                <div class="collapse collapse-horizontal" id="AgregarRadiofarmaco">
                    <div class="card card-body" style="width: 300px;">
                        <div class="row">
                            <div class="col">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" name="nombre_radiofarmaco_mn" id="nombre_radiofarmaco_mn" placeholder="Nombre">
                                    <label for="nombre_radiofarmaco_mn">Nombre</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                               <button class="btn btn-primary" type="button" id="guardar_radiofarmaco_mn">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="cantidadradiofarmacos" id="cantidadradiofarmacos" placeholder="Cantidad">
                <label for="Cantidad">Cantidad</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <button class="btn btn-primary" type="button" id="save_radiofarmaco_mn">Agregar Detalle de Radiofarmacos</button>
        </div>
    </div>
    <div class="row" id="detalleradiofarmacos">
        <div class="col">
            <h4>Radiofarmacos</h4>
            <div class="table-responsive">
                <table id="tabla_detalleradiofarmacos" class="table table-dark table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Opciones</th>
                        </tr>
                    </thead>
                    <tboby>
                        <tr class="body_detalleradiofarmacos">
                            <td scope="col">#</td>
                            <td scope="col">Nombre</td>
                            <td scope="col">Cantidad</td>
                            <td scope="col">Opciones</td>
                        </tr>
                    </tboby>
                </table>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label for="batasmn">Batas?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="batasmn" id="batasmn1" value="1">
            <label class="form-check-label" for="batasmn1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="batasmn" id="batasmn2" value="0">
            <label class="form-check-label" for="batasmn2">No</label>
            </div>
        </div>
        <div class="col">
            <label for="guantesmn">Guantes?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="guantesmn" id="guantesmn1" value="1">
            <label class="form-check-label" for="guantesmn1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="guantesmn" id="guantesmn2" value="0">
            <label class="form-check-label" for="guantesmn2">No</label>
            </div>
        </div>
        <div class="col">
            <label for="pinzasmn">Pinzas?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="pinzasmn" id="pinzasmn1" value="1">
            <label class="form-check-label" for="pinzasmn1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="pinzasmn" id="pinzasmn2" value="0">
            <label class="form-check-label" for="pinzasmn2">No</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="cont_superficial" id="cont_superficial" placeholder="Cont. Superficial" value="<?php if(!empty($cont_superficial)) { echo $cont_superficial; } ?>">
                <label for="cont_superficial">Cont. Superficial</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="cont_interna" id="cont_interna" placeholder="Cont. Interna" value="<?php if(!empty($cont_interna)) { echo $cont_interna; } ?>">
                <label for="cont_interna">Cont. Interna</label>
            </div>
        </div>
        <div class="col">
            <label for="cuarto_caliente">Cuarto Caliente?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="cuarto_caliente" id="cuarto_caliente1" value="1">
            <label class="form-check-label" for="cuarto_caliente1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="cuarto_caliente" id="cuarto_caliente2" value="0">
            <label class="form-check-label" for="cuarto_caliente2">No</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="medicosmn" id="medicosmn" placeholder="Medicos" value="<?php if(!empty($medicos)) { echo $medicos; } ?>">
                <label for="medicosmn">Medicos</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="fisicosmn" id="fisicosmn" placeholder="Fisicos" value="<?php if(!empty($fisicos)) { echo $fisicos; } ?>">
                <label for="fisicosmn">Fisicos</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="tecnicosmn" id="tecnicosmn" placeholder="Tecnicos" value="<?php if(!empty($tecnicos)) { echo $tecnicos; } ?>">
                <label for="tecnicosmn">Tecnicos</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="otros" id="otros" placeholder="Otros" value="<?php if(!empty($otros)) { echo $otros; } ?>">
                <label for="otros">Otros</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <?php
            if(empty($idmedicinanuclear)){
                echo '<button type="button" id="save_datosmn" class="btn btn-primary btn-sm">Guardar</button>';
            }
            else{
                echo '<button type="button" id="update_datosmn" class="btn btn-primary btn-sm">Actualizar</button>';
            }
            ?>      
        </div>
    </div>
  </div>
  <div class="tab-pane fade" id="radiodiagnostico-pane" role="tabpanel" aria-labelledby="radiodiagnostico" tabindex="0"><h1>Radiodiagnostico</h1>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="convencional_fijo" id="convencional_fijo" placeholder="Convencional fijo" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($convencional_fijo)) { echo $convencional_fijo; } ?>">
                <label for="convencional_fijo">Convencional fijo</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="convencional_movil" id="convencional_movil" placeholder="Convencional Movil" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($convencional_movil)) { echo $convencional_movil; } ?>">
                <label for="convencional_movil">Convencional Movil</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="fluoroscopia" id="fluoroscopia" placeholder="Fluoroscopia" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($fluoroscopia)) { echo $fluoroscopia; } ?>">
                <label for="fluoroscopia">Fluoroscopia</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="telecomandos" id="telecomandos" placeholder="Telecomandos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($telecomandos)) { echo $telecomandos; } ?>">
                <label for="telecomandos">Telecomandos</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="tomografo" id="tomografo" placeholder="Tomografo" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($tomografo)) { echo $tomografo; } ?>">
                <label for="tomografo">Tomografo</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="mamografos" id="mamografos" placeholder="Mamografos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($mamografos)) { echo $mamografos; } ?>">
                <label for="mamografos">Mamografos</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="hemodinamia" id="hemodinamia" placeholder="Hemodinamia" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($hemodinamia)) { echo $hemodinamia; } ?>">
                <label for="hemodinamia">Hemodinamia</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="densitometria_osea" id="densitometria_osea" placeholder="Densitometria Osea" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($densitometria_osea)) { echo $densitometria_osea; } ?>">
                <label for="densitometria_osea">Densitometria Osea</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="periapical" id="periapical" placeholder="Periapical" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($periapical)) { echo $periapical; } ?>">
                <label for="periapical">Periapical</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="resonancia_magnetica" id="resonancia_magnetica" placeholder="Resonancia Magnetica" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($resonancia_magnetica)) { echo $resonancia_magnetica; } ?>">
                <label for="resonancia_magnetica">Resonancia Magnetica</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="panoramico" id="panoramico" placeholder="Panoramico" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($panoramico)) { echo $panoramico; } ?>">
                <label for="panoramico">Panoramico</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="angiografo" id="angiografo" placeholder="Angiografo" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($angiografo)) { echo $angiografo; } ?>">
                <label for="angiografo">Angiografo</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="arco_en_c" id="arco_en_c" placeholder="Arco en C" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($arco_en_c)) { echo $arco_en_c; } ?>">
                <label for="arco_en_c">Arco en C</label>
            </div>
        </div>
        <div class="col">
            <label for="senalizacion">Señalizacion?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="senalizacion" id="senalizacion1" value="1">
            <label class="form-check-label" for="senalizacion1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="senalizacion" id="senalizacion2" value="0">
            <label class="form-check-label" for="senalizacion2">No</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label for="blindaje">Blindaje?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="blindaje" id="blindaje1" value="1">
            <label class="form-check-label" for="blindaje1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="blindaje" id="blindaje2" value="0">
            <label class="form-check-label" for="blindaje2">No</label>
            </div>
        </div>
        <div class="col">
            <label for="petos">Petos?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="petos" id="petos1" value="1">
            <label class="form-check-label" for="petos1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="petos" id="petos2" value="0">
            <label class="form-check-label" for="petos2">No</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label for="lentes">Lentes?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="lentes" id="lentes1" value="1">
            <label class="form-check-label" for="lentes1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="lentes" id="lentes2" value="0">
            <label class="form-check-label" for="lentes2">No</label>
            </div>
        </div>
        <div class="col">
            <label for="tiroide">P. Tiroide?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="tiroide" id="tiroide1" value="1">
            <label class="form-check-label" for="tiroide1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="tiroide" id="tiroide2" value="0">
            <label class="form-check-label" for="tiroide2">No</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label for="gonodas">P. Gonodas?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gonodas" id="gonodas1" value="1">
            <label class="form-check-label" for="gonodas1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gonodas" id="gonodas2" value="0">
            <label class="form-check-label" for="gonodas2">No</label>
            </div>
        </div>
        <div class="col">
            <label for="guantes">Guantes?</label>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="guantes" id="guantes1" value="1">
            <label class="form-check-label" for="guantes1">Si</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="guantes" id="guantes2" value="0">
            <label class="form-check-label" for="guantes2">No</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="medicos" id="medicosrd" placeholder="Medicos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($medicos)) { echo $medicos; } ?>">
                <label for="medicosrd">Medicos</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="fisicos" id="fisicosrd" placeholder="Fisicos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($fisicos)) { echo $fisicos; } ?>">
                <label for="fisicosrd">Fisicos</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="odontologos" id="odontologosrd" placeholder="Odontologos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($odontologos)) { echo $odontologos; } ?>">
                <label for="odontologosrd">Odontologos</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="tecnicos" id="tecnicosrd" placeholder="Tecnicos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($tecnicos)) { echo $tecnicos; } ?>">
                <label for="tecnicosrd">Tecnicos</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="asistentes" id="asistentesrd" placeholder="Asistentes" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($asistentes)) { echo $asistentes; } ?>">
                <label for="asistentesrd">Asistentes</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="auxiliares" id="auxiliaresrd" placeholder="Auxiliares" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($auxiliares)) { echo $auxiliares; } ?>">
                <label for="auxiliaresrd">Auxiliares</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <?php
            if(empty($idradiodiagnostico)){
                echo '<button type="button" id="save_datosrd" class="btn btn-primary btn-sm">Guardar</button>';
            }
            else{
                echo '<button type="button" id="update_datosrd" class="btn btn-primary btn-sm">Actualizar</button>';
            }
            ?>      
        </div>
    </div>
  </div>
  <div class="tab-pane fade" id="radioterapia-pane" role="tabpanel" aria-labelledby="radioterapia" tabindex="0"><h1>Radioterapia</h1>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="acelerador" id="acelerador" placeholder="Acelerador" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($acelerador)) { echo $acelerador; } ?>">
                <label for="acelerador">Acelerador</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="coba_60" id="coba_60" placeholder="Coba 60" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($coba_60)) { echo $coba_60; } ?>">
                <label for="coba_60">Coba 60</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="gamma_nkife" id="gamma_nkife" placeholder="Gamma nkife" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($gamma_nkife)) { echo $gamma_nkife; } ?>">
                <label for="gamma_nkife">Gamma nkife</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="ciberknife" id="ciberknife" placeholder="Ciberknife" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($ciberknife)) { echo $ciberknife; } ?>">
                <label for="ciberknife">Ciberknife</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="braquiterapia_a" id="braquiterapia_a" placeholder="Braquiterapia alta" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($braquiterapia_a)) { echo $braquiterapia_a; } ?>">
                <label for="braquiterapia_a">Braquiterapia alta</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="braquiterapia_m" id="braquiterapia_m" placeholder="Braquiterapia media" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($braquiterapia_m)) { echo $braquiterapia_m; } ?>">
                <label for="braquiterapia_m">Braquiterapia media</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="braquiterapia_b" id="braquiterapia_b" placeholder="Braquiterapia baja" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($braquiterapia_b)) { echo $braquiterapia_b; } ?>">
                <label for="braquiterapia_b">Braquiterapia baja</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="rayos_x" id="rayos_x" placeholder="Rayos X" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($rayos_x)) { echo $rayos_x; } ?>">
                <label for="rayos_x">Rayos X</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="tac" id="tac" placeholder="TAC" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($tac)) { echo $tac; } ?>">
                <label for="tac">TAC</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="tps" id="tps" placeholder="TPS" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($tps)) { echo $tps; } ?>">
                <label for="tps">TPS</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="medicosrt" id="medicosrt" placeholder="Medicos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($medicosrt)) { echo $medicosrt; } ?>">
                <label for="medicosrt">Medicos</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="fisicosrt" id="fisicosrt" placeholder="Fisicos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($fisicosrt)) { echo $fisicosrt; } ?>">
                <label for="Fisicos">fisicosrt</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="tecnicosrt" id="tecnicosrt" placeholder="Tecnicos" onmousedown="AllowOnlyNumbers()" value="<?php if(!empty($tecnicosrt)) { echo $tecnicosrt; } ?>">
                <label for="Tecnicos">tecnicosrt</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="permiso" id="permiso" placeholder="Permiso" value="<?php if(!empty($permiso)) { echo $permiso; } ?>">
                <label for="permiso">Permiso</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" name="conformidad" id="conformidad" placeholder="Conformidad" value="<?php if(!empty($conformidad)) { echo $conformidad; } ?>">
                <label for="conformidad">Conformidad</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col text-center">
            <?php
            if(empty($idradioterapia)){
                echo '<button type="button" id="save_datosrt" class="btn btn-primary btn-sm">Guardar</button>';
            }
            else{
                echo '<button type="button" id="update_datosrt" class="btn btn-primary btn-sm">Actualizar</button>';
            }
            ?>      
        </div>
    </div>
  </div>
</div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script>
    $(document).ready(function() {
        loadEquiposMN();
        loadRadioFaracosMN();
        $("#detallemn").hide();
        $("#detalleradiofarmacos").hide();
        loadRadioFaracosMN();
        loadDetalleEquiposMN();

        $("#guardar_equipo_mn").on('click', function(){
            let nombre_equipo_mn=$("#nombre_equipo_mn").val();
            $.ajax({
                url:  base_url + '/Formulario/guardar_equipo_mn',
                async: false,
                type: 'POST',
                data: { 
                        nombre_equipo_mn : nombre_equipo_mn,
                },
                success: function(response) {
                    equiposmn=response.equiposmn;
                    let selectemn=$("#equipomn");
                    selectemn.find('option').remove();
                    selectemn.append('<option selected value="">Seleccione...</option>');
                    $.each(equiposmn, function(i, item) {
                        selectemn.append('<option value="'+equiposmn[i].id+'">'+equiposmn[i].nombre+'</option>');
                    });
                    equiposmn.val(response.itemid);
                    equiposmn.trigger("change");   
                }
            });
        });
        $("#guardar_radiofarmaco_mn").on('click', function(){
            let nombre_radiofarmaco_mn=$("#nombre_radiofarmaco_mn").val();
            $.ajax({
                url:  base_url + '/Formulario/guardar_radiofarmaco_mn',
                async: false,
                type: 'POST',
                data: { 
                        nombre_radiofarmaco_mn : nombre_radiofarmaco_mn,
                },
                success: function(response) {
                    radiofarmacosmn=response.radiofarmacosmn;
                    let selectemn=$("#radiofarmaco");
                    selectemn.find('option').remove();
                    selectemn.append('<option selected value="">Seleccione...</option>');
                    $.each(radiofarmacosmn, function(i, item) {
                        selectemn.append('<option value="'+radiofarmacosmn[i].id+'">'+radiofarmacosmn[i].nombre+'</option>');
                    });
                    radiofarmacosmn.val(response.itemid);
                    radiofarmacosmn.trigger("change");   
                }
            });
        });
        $("#estado").on('change', function(){
            let idestado=$(this).val();
            $.ajax({
                url:  base_url + '/Formulario/municipios',
                async: false,
                type: 'POST',
                data: { estado : idestado },
                success: function(response) {
                    municipios=response.municipios;
                    let selectm=$("#municipio");
                    selectm.find('option').remove();
                    selectm.append('<option selected value="">Seleccione...</option>');
                    $.each(municipios, function(i, item) {
                        selectm.append('<option value="'+municipios[i].id+'">'+municipios[i].nombre+'</option>');
                    });
                }  
            });
        });
        $("#municipio").on('change', function(){
            let idmunicipio=$(this).val();
            $.ajax({
                url:  base_url + '/Formulario/parroquias',
                async: false,
                type: 'POST',
                data: { municipio : idmunicipio },
                success: function(response) {
                    parroquias=response.parroquias;
                    let selectp=$("#parroquia");
                    selectp.find('option').remove();
                    selectp.append('<option selected value="">Seleccione...</option>');
                    $.each(parroquias, function(i, item) {
                        selectp.append('<option value="'+parroquias[i].id+'">'+parroquias[i].nombre+'</option>');
                    });
                }  
            });
        });
        $("#save_datos").on('click', function(){
            let idreporte=$("#idreporte").val();
            let nombre=$("#nombre").val();
            let estado=$("#estado").val();
            let municipio=$("#municipio").val();
            let parroquia=$("#parroquia").val();
            let direccion=$("#direccion").val();
            let correo=$("#correo").val();
            let telefono=$("#telefono").val();
            let director=$("#director").val();
            let rimfri=$("#rimfri").val();
            $.ajax({
                url:  base_url + '/Formulario/guardar_datos',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    nombre : nombre,
                    estado : estado,
                    municipio : municipio,
                    parroquia : parroquia,
                    direccion : direccion,
                    correo : correo,
                    telefono : telefono,
                    director : director,
                    rimfri : rimfri
                },
                success: function(response) {
                    idinstitucion=response.idinstitucion;
                    $("#idinstitucion").val(idinstitucion);
                }  
            });
        });
        $("#update_datos").on('click', function(){
            let idreporte=$("#idreporte").val();
            let idinstitucion=$("#idinstitucion").val();
            let nombre=$("#nombre").val();
            let estado=$("#estado").val();
            let municipio=$("#municipio").val();
            let parroquia=$("#parroquia").val();
            let direccion=$("#direccion").val();
            let correo=$("#correo").val();
            let telefono=$("#telefono").val();
            let director=$("#director").val();
            let rimfri=$("#rimfri").val();
            $.ajax({
                url:  base_url + '/Formulario/update_datos',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    nombre : nombre,
                    estado : estado,
                    municipio : municipio,
                    parroquia : parroquia,
                    direccion : direccion,
                    correo : correo,
                    telefono : telefono,
                    director : director,
                    rimfri : rimfri,
                    idinstitucion : idinstitucion
                },
                success: function(response) {
                    idinstitucion=response.idinstitucion;
                    $("#idinstitucion").val(idinstitucion);
                }  
            });
        });
        $("#save_datosmn").on('click', function(){
            let idreporte=$("#idreporte").val();
            let gamma_camara=$("#gamma_camara").val();
            let spect=$("#spect").val();
            let pect=$("#pect").val();
            let cilintigrafo=$("#cilintigrafo").val();
            let equipo_portatil=$("#equipo_portatil").val();
            let actimetro=$('input[name="actimetro"]').val();
            let tc99=$("#tc99").val();
            let i_131=$("#i_131").val();
            let ga67=$("#ga67").val();
            let fr18=$("#fr18").val();
            let tl201=$("#tl201").val();
            let i_125=$("#i_125").val();
            let i_131_capsula=$("#i_131_capsula").val();
            let batas=$('input[name="batasmn"]').val();
            let guantes=$('input[name="guantesmn"]').val();
            let pinzas=$('input[name="pinzasmn"]').val();
            let cuarto_caliente=$('input[name="cuarto_caliente"]').val();
            let cont_superficial=$("#cont_superficial").val();
            let cont_interna=$("#cont_interna").val();
            let medicos=$("#medicosmn").val();
            let fisicos=$("#fisicosmn").val();
            let tecnicos=$("#tecnicosmn").val();
            let otros=$("#otros").val();
            let idinstitucion=$("#idinstitucion").val();
            $.ajax({
                url:  base_url + '/Formulario/guardar_mn',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    gamma_camara : gamma_camara,
                    spect : spect,
                    pect : pect,
                    cilintigrafo : cilintigrafo,
                    equipo_portatil : equipo_portatil,
                    actimetro : actimetro,
                    tc99 : tc99,
                    i_131 : i_131,
                    ga67 : ga67,
                    fr18 : fr18,
                    tl201 : tl201,
                    i_125 : i_125,
                    i_131_capsula : i_131_capsula,
                    batas : batas,
                    guantes : guantes,
                    pinzas : pinzas,
                    cont_superficial : cont_superficial,
                    cont_interna : cont_interna,
                    cuarto_caliente : cuarto_caliente,
                    medicos : medicos,
                    fisicos : fisicos,
                    tecnicos : tecnicos,
                    otros : otros,
                    idinstitucion : idinstitucion
                },
                success: function(response) {
                    idmedicinanuclear=response.idmedicinanuclear;
                    $("#idmedicinanuclear").val(idmedicinanuclear);
                }  
            });
        });
        $("#update_datosmn").on('click', function(){
            let idreporte=$("#idreporte").val();
            let gamma_camara=$("#gamma_camara").val();
            let spect=$("#spect").val();
            let pect=$("#pect").val();
            let cilintigrafo=$("#cilintigrafo").val();
            let equipo_portatil=$("#equipo_portatil").val();
            let actimetro=$('input[name="actimetro"]').val();
            let tc99=$("#tc99").val();
            let i_131=$("#i_131").val();
            let ga67=$("#ga67").val();
            let fr18=$("#fr18").val();
            let tl201=$("#tl201").val();
            let i_125=$("#i_125").val();
            let i_131_capsula=$("#i_131_capsula").val();
            let batas=$('input[name="batasmn"]').val();
            let guantes=$('input[name="guantesmn"]').val();
            let pinzas=$('input[name="pinzasmn"]').val();
            let cuarto_caliente=$('input[name="cuarto_caliente"]').val();
            let cont_superficial=$("#cont_superficial").val();
            let cont_interna=$("#cont_interna").val();
            let medicos=$("#medicosmn").val();
            let fisicos=$("#fisicosmn").val();
            let tecnicos=$("#tecnicosmn").val();
            let otros=$("#otros").val();
            let idinstitucion=$("#idinstitucion").val();
            let idmedicinanuclear=$("#idmedicinanuclear").val();
            $.ajax({
                url:  base_url + '/Formulario/update_mn',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    gamma_camara : gamma_camara,
                    spect : spect,
                    pect : pect,
                    cilintigrafo : cilintigrafo,
                    equipo_portatil : equipo_portatil,
                    actimetro : actimetro,
                    tc99 : tc99,
                    i_131 : i_131,
                    ga67 : ga67,
                    fr18 : fr18,
                    tl201 : tl201,
                    i_125 : i_125,
                    i_131_capsula : i_131_capsula,
                    batas : batas,
                    guantes : guantes,
                    pinzas : pinzas,
                    cont_superficial : cont_superficial,
                    cont_interna : cont_interna,
                    cuarto_caliente : cuarto_caliente,
                    medicos : medicos,
                    fisicos : fisicos,
                    tecnicos : tecnicos,
                    otros : otros,
                    idinstitucion : idinstitucion,
                    idmedicinanuclear : idmedicinanuclear
                },
                success: function(response) {
                    idmedicinanuclear=response.idmedicinanuclear;
                    $("#idmedicinanuclear").val(idmedicinanuclear);
                }  
            });
        });
        $("#save_datosrd").on('click', function(){
            let idreporte=$("#idreporte").val();
            let convencional_fijo=$("#convencional_fijo").val();
            let convencional_movil=$("#convencional_movil").val();
            let fluoroscopia=$("#fluoroscopia").val();
            let telecomandos=$("#telecomandos").val();
            let tomografo=$("#tomografo").val();
            let mamografos=$("#mamografos").val();
            let hemodinamia=$("#hemodinamia").val();
            let densitometria_osea=$("#densitometria_osea").val();
            let periapical=$("#periapical").val();
            let resonancia_magnetica=$("#resonancia_magnetica").val();
            let panoramico=$("#panoramico").val();
            let angiografo=$("#angiografo").val();
            let arco_en_c=$("#arco_en_c").val();
            let senalizacion=$('input[name="senalizacion"]').val();
            let blindaje=$('input[name="blindaje"]').val();
            let petos=$('input[name="petos"]').val();
            let lentes=$('input[name="lentes"]').val();
            let tiroide=$('input[name="tiroide"]').val();
            let gonodas=$('input[name="gonodas"]').val();
            let guantes=$('input[name="guantes"]').val();
            let medicos=$("#medicosrd").val();
            let fisicos=$("#fisicosrd").val();
            let odontologos=$("#odontologosrd").val();
            let tecnicos=$("#tecnicosrd").val();
            let asistentes=$("#asistentesrd").val();
            let auxiliares=$("#auxiliaresrd").val();
            let idinstitucion=$("#idinstitucion").val();
            $.ajax({
                url:  base_url + '/Formulario/guardar_rd',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    convencional_fijo : convencional_fijo,
                    convencional_movil : convencional_movil,
                    fluoroscopia : fluoroscopia,
                    telecomandos : telecomandos,
                    tomografo : tomografo,
                    mamografos : mamografos,
                    hemodinamia : hemodinamia,
                    densitometria_osea : densitometria_osea,
                    periapical : periapical,
                    resonancia_magnetica : resonancia_magnetica,
                    panoramico : panoramico,
                    angiografo : angiografo,
                    arco_en_c : arco_en_c,
                    senalizacion : senalizacion,
                    blindaje : blindaje,
                    petos : petos,
                    lentes : lentes,
                    tiroide : tiroide,
                    gonodas : gonodas,
                    guantes : guantes,
                    medicos : medicosrd,
                    fisicos : fisicosrd,
                    odontologos : odontologosrd,
                    tecnicos : tecnicosrd,
                    asistentes : asistentesrd,
                    auxiliares : auxiliaresrd,
                    idinstitucion : idinstitucion
                },
                success: function(response) {
                    idradiodiagnostico=response.idradiodiagnostico;
                    $("#idradiodiagnostico").val(idradiodiagnostico);
                }  
            });
        });
        $("#update_datosrd").on('click', function(){
            let idreporte=$("#idreporte").val();
            let convencional_fijo=$("#convencional_fijo").val();
            let convencional_movil=$("#convencional_movil").val();
            let fluoroscopia=$("#fluoroscopia").val();
            let telecomandos=$("#telecomandos").val();
            let tomografo=$("#tomografo").val();
            let mamografos=$("#mamografos").val();
            let hemodinamia=$("#hemodinamia").val();
            let densitometria_osea=$("#densitometria_osea").val();
            let periapical=$("#periapical").val();
            let resonancia_magnetica=$("#resonancia_magnetica").val();
            let panoramico=$("#panoramico").val();
            let angiografo=$("#angiografo").val();
            let arco_en_c=$("#arco_en_c").val();
            let senalizacion=$('input[name="senalizacion"]').val();
            let blindaje=$('input[name="blindaje"]').val();
            let petos=$('input[name="petos"]').val();
            let lentes=$('input[name="lentes"]').val();
            let tiroide=$('input[name="tiroide"]').val();
            let gonodas=$('input[name="gonodas"]').val();
            let guantes=$('input[name="guantes"]').val();
            let medicos=$("#medicosrd").val();
            let fisicos=$("#fisicosrd").val();
            let odontologos=$("#odontologosrd").val();
            let tecnicos=$("#tecnicosrd").val();
            let asistentes=$("#asistentesrd").val();
            let auxiliares=$("#auxiliaresrd").val();
            let idinstitucion=$("#idinstitucion").val();
            let idradiodiagnostico=$("#idradiodiagnostico").val();
            $.ajax({
                url:  base_url + '/Formulario/update_rd',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    convencional_fijo : convencional_fijo,
                    convencional_movil : convencional_movil,
                    fluoroscopia : fluoroscopia,
                    telecomandos : telecomandos,
                    tomografo : tomografo,
                    mamografos : mamografos,
                    hemodinamia : hemodinamia,
                    densitometria_osea : densitometria_osea,
                    periapical : periapical,
                    resonancia_magnetica : resonancia_magnetica,
                    panoramico : panoramico,
                    angiografo : angiografo,
                    arco_en_c : arco_en_c,
                    senalizacion : senalizacion,
                    blindaje : blindaje,
                    petos : petos,
                    lentes : lentes,
                    tiroide : tiroide,
                    gonodas : gonodas,
                    guantes : guantes,
                    medicos : medicosrd,
                    fisicos : fisicosrd,
                    odontologos : odontologosrd,
                    tecnicos : tecnicosrd,
                    asistentes : asistentesrd,
                    auxiliares : auxiliaresrd,
                    idinstitucion : idinstitucion,
                    idradiodiagnostico : idradiodiagnostico
                },
                success: function(response) {
                    idradiodiagnostico=response.idradiodiagnostico;
                    $("#idradiodiagnostico").val(idradiodiagnostico);
                }  
            });
        });
        $("#save_datosrt").on('click', function(){
            let idreporte=$("#idreporte").val();
            let acelerador=$("#acelerador").val();
            let coba_60=$("#coba_60").val();
            let gamma_nkife=$("#gamma_nkife").val();
            let ciberknife=$("#ciberknife").val();
            let braquiterapia_a=$("#braquiterapia_a").val();
            let braquiterapia_m=$("#braquiterapia_m").val();
            let braquiterapia_b=$("#braquiterapia_b").val();
            let rayos_x=$("#rayos_x").val();
            let tac=$("#tac").val();
            let tps=$("#tps").val();
            let medicosrt=$("#medicosrt").val();
            let fisicosrt=$("#fisicosrt").val();
            let tecnicosrt=$("#tecnicosrt").val();
            let permiso=$("#permiso").val();
            let conformidad=$("#conformidad").val();
            let idinstitucion=$("#idinstitucion").val();
            $.ajax({
                url:  base_url + '/Formulario/guardar_rt',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    acelerador : acelerador,
                    coba_60 : coba_60,
                    gamma_nkife : gamma_nkife,
                    ciberknife : ciberknife,
                    braquiterapia_a : braquiterapia_a,
                    braquiterapia_m : braquiterapia_m,
                    braquiterapia_b : braquiterapia_b,
                    rayos_x : rayos_x,
                    tac : tac,
                    tps : tps,
                    medicosrt : medicosrt,
                    fisicosrt : fisicosrt,
                    tecnicosrt : tecnicosrt,
                    permiso : permiso,
                    conformidad : conformidad,
                    idinstitucion : idinstitucion
                },
                success: function(response) {
                    idradioterapia=response.idradioterapia;
                    $("#idradioterapia").val(idradioterapia);
                }  
            });
        });
        $("#update_datosrt").on('click', function(){
            let idreporte=$("#idreporte").val();
            let acelerador=$("#acelerador").val();
            let coba_60=$("#coba_60").val();
            let gamma_nkife=$("#gamma_nkife").val();
            let ciberknife=$("#ciberknife").val();
            let braquiterapia_a=$("#braquiterapia_a").val();
            let braquiterapia_m=$("#braquiterapia_m").val();
            let braquiterapia_b=$("#braquiterapia_b").val();
            let rayos_x=$("#rayos_x").val();
            let tac=$("#tac").val();
            let tps=$("#tps").val();
            let medicosrt=$("#medicosrt").val();
            let fisicosrt=$("#fisicosrt").val();
            let tecnicosrt=$("#tecnicosrt").val();
            let permiso=$("#permiso").val();
            let conformidad=$("#conformidad").val();
            let idinstitucion=$("#idinstitucion").val();
            let idradioterapia=$("#idradioterapia").val();
            $.ajax({
                url:  base_url + '/Formulario/update_rt',
                async: false,
                type: 'POST',
                data: { 
                    idreporte : idreporte,
                    acelerador : acelerador,
                    coba_60 : coba_60,
                    gamma_nkife : gamma_nkife,
                    ciberknife : ciberknife,
                    braquiterapia_a : braquiterapia_a,
                    braquiterapia_m : braquiterapia_m,
                    braquiterapia_b : braquiterapia_b,
                    rayos_x : rayos_x,
                    tac : tac,
                    tps : tps,
                    medicosrt : medicosrt,
                    fisicosrt : fisicosrt,
                    tecnicosrt : tecnicosrt,
                    permiso : permiso,
                    conformidad : conformidad,
                    idinstitucion : idinstitucion,
                    idradioterapia : idradioterapia
                },
                success: function(response) {
                    idradioterapia=response.idradioterapia;
                    $("#idradioterapia").val(idradioterapia);
                }  
            });
        });
    });
    function AllowOnlyNumbers(event){
        var regex = new RegExp("^[0-9]*$");
        var key = String.fromCharCode(!event.charCode ? event.which : event.charCode);
        if (!regex.test(key)) {
            event.preventDefault();
            return false;
        }
    }
    function loadEquiposMN(){
        let idinstitucion=$("#idinstitucion").val();
        $.ajax({
            url:  base_url + '/Formulario/load_equipos_mn',
            async: false,
            type: 'POST',
            data: { 
                idinstitucion : idinstitucion
            },
            success: function(response) {
                equiposmn=response.equiposmn;
                let selectemn=$("#equipomn");
                selectemn.find('option').remove();
                selectemn.append('<option selected value="">Seleccione...</option>');
                $.each(equiposmn, function(i, item) {
                    selectemn.append('<option value="'+equiposmn[i].id+'">'+equiposmn[i].nombre+'</option>');
                });
            }
        });
    }
    function loadRadioFaracosMN(){
            let idinstitucion=$("#idinstitucion").val();
            $.ajax({
                url:  base_url + '/Formulario/load_radiofarmacos_mn',
                async: false,
                type: 'POST',
                data: { 
                        idinstitucion : idinstitucion
                },
                success: function(response) {
                    radiofarmacosmn=response.radiofarmacosmn;
                    let selectemn=$("#radiofarmaco");
                    selectemn.find('option').remove();
                    selectemn.append('<option selected value="">Seleccione...</option>');
                    $.each(radiofarmacosmn, function(i, item) {
                        selectemn.append('<option value="'+radiofarmacosmn[i].id+'">'+radiofarmacosmn[i].nombre+'</option>');
                    });
                }
            });
    }
    function loadDetalleEquiposMN(){
        let idinstitucion=$("#idinstitucion").val();
        $.ajax({
            url:  base_url + '/Formulario/load_detalle_equipos_mn',
            async: false,
            type: 'POST',
            data: { 
                idinstitucion : idinstitucion
            },
            success: function(response) {
                    detalleequiposmn=response.detalleequiposmn;
                    $("#tabla_detallemn tbody > tr").remove();
                    $.each(detalleequiposmn, function(i, item) {
                        $("#tabla_detallemn tbody").append('<tr><td scope="col">'+detalleequiposmn[i].id+'</td><td scope="col">'+detalleequiposmn[i].equipo+'</td><td scope="col">'+detalleequiposmn[i].cantidad+'</td><td scope="col">Opciones</td></tr>');
                    });
                    if(detalleequiposmn.length >0){
                        $("#detallemn").show();  
                    }
                    else{
                        $("#detallemn").hide(); 
                    }
            }
        });
    }
    function loadDetalleRadioFaracosMN(){
            let idinstitucion=$("#idinstitucion").val();
            $.ajax({
                url:  base_url + '/Formulario/load_detalle_radiofarmacos_mn',
                async: false,
                type: 'POST',
                data: { 
                        idinstitucion : idinstitucion
                },
                success: function(response) {
                    detalleradiofarmacos=response.detalleradiofarmacos;
                    $("#tabla_detalleradiofarmacos tbody > tr").remove();
                    $.each(detalleradiofarmacos, function(i, item) {
                        $("#tabla_detalleradiofarmacos tbody").append('<tr><td scope="col">'+detalleradiofarmacos[i].id+'</td><td scope="col">'+detalleradiofarmacos[i].equipo+'</td><td scope="col">'+detalleradiofarmacos[i].cantidad+'</td><td scope="col">Opciones</td></tr>');
                    });
                    if(detalleradiofarmacos.length >0){
                        $("#detalleradiofarmacos").show();  
                    }
                    else{
                        $("#detalleradiofarmacos").hide(); 
                    }
                }
            });
    }
        $("#save_equipo_mn").on('click', function(){
            let idequipo=$("#equipomn").val();
            let idinstitucion=$("#idinstitucion").val();
            let cantidad=$("#cantidadmn").val();
            $.ajax({
                url:  base_url + '/Formulario/save_equipo_mn',
                async: false,
                type: 'POST',
                data: { 
                    idequipo : idequipo,
                    idinstitucion :idinstitucion,
                    cantidad : cantidad
                },
                success: function(response) {
                    detalleequiposmn=response.detalleequiposmn;
                    $("#tabla_detallemn tbody > tr").remove();
                    $.each(detalleequiposmn, function(i, item) {
                        $("#tabla_detallemn tbody").append('<tr><td scope="col">'+detalleequiposmn[i].id+'</td><td scope="col">'+detalleequiposmn[i].equipo+'</td><td scope="col">'+detalleequiposmn[i].cantidad+'</td><td scope="col">Opciones</td></tr>');
                    });
                    if(detalleequiposmn.length >0){
                        $("#detallemn").show();  
                    }
                    else{
                        $("#detallemn").hide(); 
                    }
                }
            });
        });
        $("#save_radiofarmaco_mn").on('click', function(){
            let idequipo=$("#radiofarmaco").val();
            let idinstitucion=$("#idinstitucion").val();
            let cantidad=$("#cantidadradiofarmacos").val();
            $.ajax({
                url:  base_url + '/Formulario/save_radiofarmaco_mn',
                async: false,
                type: 'POST',
                data: { 
                    idequipo : idequipo,
                    idinstitucion :idinstitucion,
                    cantidad : cantidad
                },
                success: function(response) {
                    detalleradiofarmacos=response.detalleradiofarmacos;
                    $("#tabla_detalleradiofarmacos tbody > tr").remove();
                    $.each(detalleradiofarmacos, function(i, item) {
                        $("#tabla_detalleradiofarmacos tbody").append('<tr><td scope="col">'+detalleradiofarmacos[i].id+'</td><td scope="col">'+detalleradiofarmacos[i].equipo+'</td><td scope="col">'+detalleradiofarmacos[i].cantidad+'</td><td scope="col">Opciones</td></tr>');
                    });
                    if(detalleradiofarmacos.length >0){
                        $("#detalleradiofarmacos").show();  
                    }
                    else{
                        $("#detalleradiofarmacos").hide(); 
                    }
                }
            });
        });



</script>