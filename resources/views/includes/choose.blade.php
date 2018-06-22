<?php
                            $options = \App\Http\Controllers\VariantController::getVariantOption($detail->skuCode);
                        ?>
                            @foreach ($options as $op)
                            <dl class="param param-feature">
                                <!-- Đổ ra các option -->
                                <dt style="font-weight: lighter; font-style: italic; color: #808080;" value="{{$op->optionID}}">{{\App\Http\Controllers\OptionController::getOption($op->optionID)}}</dt>
                                <!-- Đổ ra các dữ liệu lựa chọn, màu, kích thước -->
                                <?php
                                    $variants = \App\Http\Controllers\VariantController::getVariantValue($detail->id, $op->optionID);
                                ?>
                                    <dd id="variant-choose">
                                        @if ($op->optionID == 1)
                                        <div class="color-choose" id="option{{$op->optionID}}" value="{{$op->optionID}}">
                                            @foreach ($variants as $vari)
                                            <?php
                                                $color = \App\Http\Controllers\ValueController::getValueByID($vari->valueID);
                                            ?>
                                                <label>
                                                    <input type="radio" name="color" id="value_variant{{$color->id}}" value="{{ $color->id}}">
                                                    <span class="color-item" style="background-color: {{$color->valueName}}"></span>
                                                </label>
                                                @endforeach
                                        </div>
                                        @else
                                        <div class="other-choose" id="option{{$op->optionID}}" value="{{$op->optionID}}">
                                            @foreach ($variants as $vari)
                                            <?php
                                                $other = \App\Http\Controllers\ValueController::getValueByID($vari->valueID);
                                            ?>
                                                <label>
                                                    <input type="radio" name="other" id="value_variant{{$other->id}}" value="{{$other->id}}">
                                                    <span class="other-item">{{$other->valueName}}</span>
                                                </label>
                                                @endforeach
                                        </div>
                                        @endif
                                    </dd>
                            </dl>
                            @endforeach