<!DOCTYPE html>
<html lang="en" dir="rtl">

<head>
    <meta charset="UTF-8">
    <title>CodePen - Employee Account | Form Wizard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='stylesheet'
        href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500'>
    <link rel="stylesheet" href="./style.css">

</head>

<body>
    <!-- partial:index.partial.html -->
    <section class="form-box">
        <div class="container">

            <div class="row">
                <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-wizard">

                    <!-- Form Wizard -->
                    <form role="form" action="seller.php" method="post" enctype="multipart/form-data">

                        <h3>قم بالتسجيل لتتمكن من بدء البيع اليوم</h3>
                        <p>قم بانشاء حساب البيع الخاص بك</p>

                        <!-- Form progress -->
                        <div class="form-wizard-steps form-wizard-tolal-steps-4">
                            <div class="form-wizard-progress">
                                <div class="form-wizard-progress-line" data-now-value="12.25" data-number-of-steps="4"
                                    style="width: 12.25%;"></div>
                            </div>
                            <!-- Step 1 -->
                            <div class="form-wizard-step active">
                                <div class="form-wizard-step-icon"><i class="fa fa-user" aria-hidden="true"></i></div>
                                <p>حساب البائع</p>
                            </div>
                            <!-- Step 1 -->

                            <!-- Step 2 -->
                            <div class="form-wizard-step">
                                <div class="form-wizard-step-icon"><i class="fa fa-building-o" aria-hidden="true"></i>
                                </div>
                                <p>الشركه</p>
                            </div>
                            <!-- Step 2 -->

                            <!-- Step 3 -->
                            <div class="form-wizard-step">
                                <div class="form-wizard-step-icon"><i class="fa fa-money" aria-hidden="true"></i>

                                </div>
                                <p>حساب البنك</p>
                            </div>
                            <!-- Step 3 -->

                            <!-- Step 4 -->
                            <div class="form-wizard-step">
                                <div class="form-wizard-step-icon"><i class="fa fa-briefcase" aria-hidden="true"></i>
                                </div>
                                <p>ملخص</p>
                            </div>
                            <!-- Step 4 -->
                        </div>
                        <!-- Form progress -->


                        <!-- Form Step 1 -->
                        <fieldset>

                            <h4>المعلومات الشخصيه: <span>الخطوة 1 - 4</span></h4>
                            <div class="form-group">
                                <label><span>*</span> الاسم الاول واسم العائله :</label>
                                <input type="text" name="First_Name" class="form-control ">
                            </div>
                            <div class="form-group">
                                <label><span>*</span> اسم المتجر :</label>
                                <input type="text" name="Last_Name" class="form-control ">
                            </div>
                            <div class="form-group">
                                <label>رقم الهاتف :</label>
                                <input type="text" name="Username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label><span>*</span> عنوان البريد الااكترونى :</label>:</label>
                                <input type="email" name="email" class="form-control ">
                            </div>
                            <div class="form-group">
                                <label><span>*</span> اعد كتابه عنوان البريد الالكترونى :</label>
                                <input type="email" name="confiremEmail" class="form-control ">
                            </div>
                            <div class="form-group">
                                <label>البريد الالكترونى للبائع الذى رشحك :</label>
                                <input type="email" name="emailForrefernce" class="form-control">
                            </div>
                            <div class="form-group">
                                <label><span>*</span> كلمه المرور :</label>
                                <input type="password" name="Password" class="form-control  passwordMain">
                            </div>
                            <div class="form-group">
                                <label><span>*</span> اعد كتابه كلمه المرور :</label>
                                <input type="password" name="ConfirmPassword" class="form-control  passwordRepeat">
                            </div>
                            <div class="form-group passwordErrorWrap">
                                <label class="redLabel"><span>*</span> Password Didn't Match</label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label" for="defaultCheck1">
                                    لقد قرات ووافقت <a href="#">Econtract EgyptAir</a>
                                </label>
                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                            </div>
                            <div class="form-wizard-buttons">
                                <button type="button" class="btn btn-next checkPassword">التالى</button>
                            </div>

                        </fieldset>
                        <!-- Form Step 1 -->

                        <!-- Form Step 2 -->
                        <fieldset>

                            <h4>اضف معلومات عن العمل : <span>الخطوة 2 - 4</span></h4>
                            <div class="form-group">
                                <label><span>*</span> المدينه او البلدة :</label>
                                <input type="text" name="city" class="form-control ">
                            </div>
                            <div class="form-group">
                                <label><span>*</span> الدوله :</label>
                                <select name="countery" class="form-control">
                                    <option value="" disabled selected="selected">Select Country</option>
                                    <option value="United States">United States</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="Afghanistan">Afghanistan</option>
                                    <option value="Albania">Albania</option>
                                    <option value="Algeria">Algeria</option>
                                    <option value="American Samoa">American Samoa</option>
                                    <option value="Andorra">Andorra</option>
                                    <option value="Angola">Angola</option>
                                    <option value="Anguilla">Anguilla</option>
                                    <option value="Antarctica">Antarctica</option>
                                    <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Armenia">Armenia</option>
                                    <option value="Aruba">Aruba</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Austria">Austria</option>
                                    <option value="Azerbaijan">Azerbaijan</option>
                                    <option value="Bahamas">Bahamas</option>
                                    <option value="Bahrain">Bahrain</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Barbados">Barbados</option>
                                    <option value="Belarus">Belarus</option>
                                    <option value="Belgium">Belgium</option>
                                    <option value="Belize">Belize</option>
                                    <option value="Benin">Benin</option>
                                    <option value="Bermuda">Bermuda</option>
                                    <option value="Bhutan">Bhutan</option>
                                    <option value="Bolivia">Bolivia</option>
                                    <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                    <option value="Botswana">Botswana</option>
                                    <option value="Bouvet Island">Bouvet Island</option>
                                    <option value="Brazil">Brazil</option>
                                    <option value="British Indian Ocean Territory">British Indian Ocean Territory
                                    </option>
                                    <option value="Brunei Darussalam">Brunei Darussalam</option>
                                    <option value="Bulgaria">Bulgaria</option>
                                    <option value="Burkina Faso">Burkina Faso</option>
                                    <option value="Burundi">Burundi</option>
                                    <option value="Cambodia">Cambodia</option>
                                    <option value="Cameroon">Cameroon</option>
                                    <option value="Canada">Canada</option>
                                    <option value="Cape Verde">Cape Verde</option>
                                    <option value="Cayman Islands">Cayman Islands</option>
                                    <option value="Central African Republic">Central African Republic</option>
                                    <option value="Chad">Chad</option>
                                    <option value="Chile">Chile</option>
                                    <option value="China">China</option>
                                    <option value="Christmas Island">Christmas Island</option>
                                    <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                    <option value="Colombia">Colombia</option>
                                    <option value="Comoros">Comoros</option>
                                    <option value="Congo">Congo</option>
                                    <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic
                                        of The</option>
                                    <option value="Cook Islands">Cook Islands</option>
                                    <option value="Costa Rica">Costa Rica</option>
                                    <option value="Cote D'ivoire">Cote D'ivoire</option>
                                    <option value="Croatia">Croatia</option>
                                    <option value="Cuba">Cuba</option>
                                    <option value="Cyprus">Cyprus</option>
                                    <option value="Czech Republic">Czech Republic</option>
                                    <option value="Denmark">Denmark</option>
                                    <option value="Djibouti">Djibouti</option>
                                    <option value="Dominica">Dominica</option>
                                    <option value="Dominican Republic">Dominican Republic</option>
                                    <option value="Ecuador">Ecuador</option>
                                    <option value="Egypt">Egypt</option>
                                    <option value="El Salvador">El Salvador</option>
                                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                                    <option value="Eritrea">Eritrea</option>
                                    <option value="Estonia">Estonia</option>
                                    <option value="Ethiopia">Ethiopia</option>
                                    <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                    <option value="Faroe Islands">Faroe Islands</option>
                                    <option value="Fiji">Fiji</option>
                                    <option value="Finland">Finland</option>
                                    <option value="France">France</option>
                                    <option value="French Guiana">French Guiana</option>
                                    <option value="French Polynesia">French Polynesia</option>
                                    <option value="French Southern Territories">French Southern Territories</option>
                                    <option value="Gabon">Gabon</option>
                                    <option value="Gambia">Gambia</option>
                                    <option value="Georgia">Georgia</option>
                                    <option value="Germany">Germany</option>
                                    <option value="Ghana">Ghana</option>
                                    <option value="Gibraltar">Gibraltar</option>
                                    <option value="Greece">Greece</option>
                                    <option value="Greenland">Greenland</option>
                                    <option value="Grenada">Grenada</option>
                                    <option value="Guadeloupe">Guadeloupe</option>
                                    <option value="Guam">Guam</option>
                                    <option value="Guatemala">Guatemala</option>
                                    <option value="Guinea">Guinea</option>
                                    <option value="Guinea-bissau">Guinea-bissau</option>
                                    <option value="Guyana">Guyana</option>
                                    <option value="Haiti">Haiti</option>
                                    <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands
                                    </option>
                                    <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                    <option value="Honduras">Honduras</option>
                                    <option value="Hong Kong">Hong Kong</option>
                                    <option value="Hungary">Hungary</option>
                                    <option value="Iceland">Iceland</option>
                                    <option value="India">India</option>
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                    <option value="Iraq">Iraq</option>
                                    <option value="Ireland">Ireland</option>
                                    <option value="Israel">Israel</option>
                                    <option value="Italy">Italy</option>
                                    <option value="Jamaica">Jamaica</option>
                                    <option value="Japan">Japan</option>
                                    <option value="Jordan">Jordan</option>
                                    <option value="Kazakhstan">Kazakhstan</option>
                                    <option value="Kenya">Kenya</option>
                                    <option value="Kiribati">Kiribati</option>
                                    <option value="Korea, Democratic People's Republic of">Korea, Democratic People's
                                        Republic of</option>
                                    <option value="Korea, Republic of">Korea, Republic of</option>
                                    <option value="Kuwait">Kuwait</option>
                                    <option value="Kyrgyzstan">Kyrgyzstan</option>
                                    <option value="Lao People's Democratic Republic">Lao People's Democratic Republic
                                    </option>
                                    <option value="Latvia">Latvia</option>
                                    <option value="Lebanon">Lebanon</option>
                                    <option value="Lesotho">Lesotho</option>
                                    <option value="Liberia">Liberia</option>
                                    <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                    <option value="Liechtenstein">Liechtenstein</option>
                                    <option value="Lithuania">Lithuania</option>
                                    <option value="Luxembourg">Luxembourg</option>
                                    <option value="Macao">Macao</option>
                                    <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former
                                        Yugoslav Republic of</option>
                                    <option value="Madagascar">Madagascar</option>
                                    <option value="Malawi">Malawi</option>
                                    <option value="Malaysia">Malaysia</option>
                                    <option value="Maldives">Maldives</option>
                                    <option value="Mali">Mali</option>
                                    <option value="Malta">Malta</option>
                                    <option value="Marshall Islands">Marshall Islands</option>
                                    <option value="Martinique">Martinique</option>
                                    <option value="Mauritania">Mauritania</option>
                                    <option value="Mauritius">Mauritius</option>
                                    <option value="Mayotte">Mayotte</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Micronesia, Federated States of">Micronesia, Federated States of
                                    </option>
                                    <option value="Moldova, Republic of">Moldova, Republic of</option>
                                    <option value="Monaco">Monaco</option>
                                    <option value="Mongolia">Mongolia</option>
                                    <option value="Montserrat">Montserrat</option>
                                    <option value="Morocco">Morocco</option>
                                    <option value="Mozambique">Mozambique</option>
                                    <option value="Myanmar">Myanmar</option>
                                    <option value="Namibia">Namibia</option>
                                    <option value="Nauru">Nauru</option>
                                    <option value="Nepal">Nepal</option>
                                    <option value="Netherlands">Netherlands</option>
                                    <option value="Netherlands Antilles">Netherlands Antilles</option>
                                    <option value="New Caledonia">New Caledonia</option>
                                    <option value="New Zealand">New Zealand</option>
                                    <option value="Nicaragua">Nicaragua</option>
                                    <option value="Niger">Niger</option>
                                    <option value="Nigeria">Nigeria</option>
                                    <option value="Niue">Niue</option>
                                    <option value="Norfolk Island">Norfolk Island</option>
                                    <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                    <option value="Norway">Norway</option>
                                    <option value="Oman">Oman</option>
                                    <option value="Pakistan">Pakistan</option>
                                    <option value="Palau">Palau</option>
                                    <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied
                                    </option>
                                    <option value="Panama">Panama</option>
                                    <option value="Papua New Guinea">Papua New Guinea</option>
                                    <option value="Paraguay">Paraguay</option>
                                    <option value="Peru">Peru</option>
                                    <option value="Philippines">Philippines</option>
                                    <option value="Pitcairn">Pitcairn</option>
                                    <option value="Poland">Poland</option>
                                    <option value="Portugal">Portugal</option>
                                    <option value="Puerto Rico">Puerto Rico</option>
                                    <option value="Qatar">Qatar</option>
                                    <option value="Reunion">Reunion</option>
                                    <option value="Romania">Romania</option>
                                    <option value="Russian Federation">Russian Federation</option>
                                    <option value="Rwanda">Rwanda</option>
                                    <option value="Saint Helena">Saint Helena</option>
                                    <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                    <option value="Saint Lucia">Saint Lucia</option>
                                    <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                    <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines
                                    </option>
                                    <option value="Samoa">Samoa</option>
                                    <option value="San Marino">San Marino</option>
                                    <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                    <option value="Saudi Arabia">Saudi Arabia</option>
                                    <option value="Senegal">Senegal</option>
                                    <option value="Serbia and Montenegro">Serbia and Montenegro</option>
                                    <option value="Seychelles">Seychelles</option>
                                    <option value="Sierra Leone">Sierra Leone</option>
                                    <option value="Singapore">Singapore</option>
                                    <option value="Slovakia">Slovakia</option>
                                    <option value="Slovenia">Slovenia</option>
                                    <option value="Solomon Islands">Solomon Islands</option>
                                    <option value="Somalia">Somalia</option>
                                    <option value="South Africa">South Africa</option>
                                    <option value="South Georgia and The South Sandwich Islands">South Georgia and The
                                        South Sandwich Islands</option>
                                    <option value="Spain">Spain</option>
                                    <option value="Sri Lanka">Sri Lanka</option>
                                    <option value="Sudan">Sudan</option>
                                    <option value="Suriname">Suriname</option>
                                    <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                    <option value="Swaziland">Swaziland</option>
                                    <option value="Sweden">Sweden</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                    <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                    <option value="Tajikistan">Tajikistan</option>
                                    <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                    <option value="Thailand">Thailand</option>
                                    <option value="Timor-leste">Timor-leste</option>
                                    <option value="Togo">Togo</option>
                                    <option value="Tokelau">Tokelau</option>
                                    <option value="Tonga">Tonga</option>
                                    <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                    <option value="Tunisia">Tunisia</option>
                                    <option value="Turkey">Turkey</option>
                                    <option value="Turkmenistan">Turkmenistan</option>
                                    <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                    <option value="Tuvalu">Tuvalu</option>
                                    <option value="Uganda">Uganda</option>
                                    <option value="Ukraine">Ukraine</option>
                                    <option value="United Arab Emirates">United Arab Emirates</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="United States">United States</option>
                                    <option value="United States Minor Outlying Islands">United States Minor Outlying
                                        Islands</option>
                                    <option value="Uruguay">Uruguay</option>
                                    <option value="Uzbekistan">Uzbekistan</option>
                                    <option value="Vanuatu">Vanuatu</option>
                                    <option value="Venezuela">Venezuela</option>
                                    <option value="Viet Nam">Viet Nam</option>
                                    <option value="Virgin Islands, British">Virgin Islands, British</option>
                                    <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                    <option value="Wallis and Futuna">Wallis and Futuna</option>
                                    <option value="Western Sahara">Western Sahara</option>
                                    <option value="Yemen">Yemen</option>
                                    <option value="Zambia">Zambia</option>
                                    <option value="Zimbabwe">Zimbabwe</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>الرمز البريدى :</label>
                                <input type="text" name="zip" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>الشخص المسؤول :</label>
                                <input type="text" name="resperson" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>رقم السجل التجارى :</label>
                                <input type="text" name="Zip Code" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="file">البطاقه الضريبيه :</label>
                                <div class="input-group">
                                    <input type="text" name="filename1" class="form-control" readonly>
                                    <span class="input-group-btn">
                                        <div class="btn btn-default  custom-file-uploader">
                                            <input type="file" name="filefees" />
                                            ملف البائع
                                        </div>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="file">صورة السجل التجارى :</label>
                                <div class="input-group">
                                    <input type="text" name="filename2" class="form-control" readonly>
                                    <span class="input-group-btn">
                                        <div class="btn btn-default  custom-file-uploader">
                                            <input type="file" name="fileimagefees" />
                                            ملف البائع
                                        </div>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>رقم ضريبه القيمه المضافه :</label>
                                <input type="text" name="numberFees" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>الاسم القانونى / اسم الشركه :</label>
                                <input type="text" name="companyName" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="file">بطاقه الهوية :</label>
                                <div class="input-group">
                                    <input type="text" name="filename3" class="form-control" readonly>
                                    <span class="input-group-btn">
                                        <div class="btn btn-default  custom-file-uploader">
                                            <input type="file" name="idcard" /> ملف البائع
                                        </div>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label><span>*</span>العنوان 1 :</label>
                                <input type="text" name="address1" class="form-control ">
                            </div>
                            <div class="form-group">
                                <label>العنوان 2 :</label>
                                <input type="text" name="address2" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>الرقم المبنى :</label>
                                <input type="text" name="numberBulding" class="form-control">
                            </div>
                            <div class="form-wizard-buttons two-buttons">
                                <button type="button" class="btn btn-next">استمرار</button>
                                <button type="button" class="btn btn-next">تخطى</button>
                            </div>
                            <div class="form-group">
                                <label>الدور :</label>
                                <input type="text" name="door" class="form-control">
                            </div>
                            <div class="form-wizard-buttons two-buttons">
                                <button type="button" class="btn btn-next">التالى</button>
                                <button type="button" class="btn btn-previous">السابق</button>
                            </div>
                        </fieldset>
                        <!-- Form Step 2 -->

                        <!-- Form Step 3 -->
                        <fieldset>

                            <h4>اضف حساب بنكى : <span>خطوة 3 - 4</span></h4>
                            <div class="form-group">
                                <label>اسم البنك :</label>
                                <input type="text" name="bankname1" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>رمز البنك :</label>
                                <input type="text" name="banksymblo" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>السويفت :</label>
                                <input type="text" name="softcode" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>اي بان :</label>
                                <input type="text" name="iban" class="form-control">
                            </div>
                            <div class="form-wizard-buttons two-buttons">
                                <button type="button" class="btn btn-next">استمرار</button>
                                <button type="button" class="btn btn-next">تخطى</button>
                            </div>
                            <div class="form-group">
                                <label>اسم صاحب الحساب :</label>
                                <input type="text" name="namebankaccount" class="form-control">
                            </div>
                            <div class="form-wizard-buttons two-buttons">
                                <button type="button" class="btn btn-next">التالى</button>
                                <button type="button" class="btn btn-previous">السابق</button>
                            </div>
                        </fieldset>
                        <!-- Form Step 3 -->

                        <!-- Form Step 4 -->
                        <fieldset>

                            <h4>ملخص<span>خطوة 4 - 4</span></h4>
                            <div style="clear:both;"></div>

                            <div class="accordion">
                                <div class="accordion-item">
                                    <div class="accordion-item-header">
                                        معلومات حساب البائع
                                    </div>
                                    <div class="accordion-item-body">
                                        <div class="accordion-item-body-content">
                                            <div class="form-group">
                                                <label><span>*</span> الاسم الاول واسم العائله :</label>
                                                <input type="text" class="form-control " readonly>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span> اسم المتجر :</label>
                                                <input type="text" n class="form-control " readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>رقم الهاتف :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span> عنوان البريد الااكترونى :</label>:
                                                <input type="email" class="form-control " readonly>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span> اعد كتابه عنوان البريد الالكترونى :</label>
                                                <input type="email" class="form-control " readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>البريد الالكترونى للبائع الذى رشحك :</label>
                                                <input type="email" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span> كلمه المرور :</label>
                                                <input type="password" class="form-control " readonly>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span> اعد كتابه كلمه المرور :</label>
                                                <input type="password" class="form-control " readonly>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label" for="defaultCheck1">
                                                    لقد قرات ووافقت <a href="#">Econtract EgyptAir</a>
                                                </label>
                                                <input class="form-check-input" type="checkbox" value=""
                                                    id="defaultCheck1">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <div class="accordion-item-header">
                                        معلومات الشركه
                                    </div>
                                    <div class="accordion-item-body">
                                        <div class="accordion-item-body-content">
                                            <div class="form-group">
                                                <label><span>*</span> المدينه او البلدة :</label>
                                                <input type="text" class="form-control " readonly>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span> الدوله :</label>
                                                <select class="form-control">
                                                    <option>Australia</option>
                                                    <option>America</option>
                                                    <option>Bangladesh</option>
                                                    <option>Canada</option>
                                                    <option>England</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>الرمز البريدى :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>الشخص المسؤول :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>رقم السجل التجارى :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label for="file">البطاقه الضريبيه :</label>
                                                <div class="input-group">
                                                    <input type="text" name="filename1" class="form-control" readonly>
                                                    <span class="input-group-btn">
                                                        <div class="btn btn-default  custom-file-uploader">
                                                            <input type="file" name="file1" />
                                                            ملف البائع
                                                        </div>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="file">صورة السجل التجارى :</label>
                                                <div class="input-group">
                                                    <input type="text" name="filename2" class="form-control" readonly>
                                                    <span class="input-group-btn">
                                                        <div class="btn btn-default  custom-file-uploader">
                                                            <input type="file" name="file2" />
                                                            ملف البائع
                                                        </div>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>رقم ضريبه القيمه المضافه :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>الاسم القانونى / اسم الشركه :</label>
                                                <input type="text"  class=" form-control" readonly>
                                            </div>

                                            <div class="form-group">
                                                <label for="file">بطاقه الهوية :</label>
                                                <div class="input-group">
                                                    <input type="text" name="filename3" class="form-control" readonly>
                                                    <span class="input-group-btn">
                                                        <div class="btn btn-default  custom-file-uploader">
                                                            <input type="file" name="file3" />
                                                            ملف البائع
                                                        </div>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span>العنوان 1 :</label>
                                                <input type="text" class="form-control " readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>العنوان 2 :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>الرقم المبنى :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>الدور :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <div class="accordion-item-header">
                                        معلومات حساب البنك
                                    </div>
                                    <div class="accordion-item-body">
                                        <div class="accordion-item-body-content">
                                            <div class="form-group">
                                                <label> اسم البنك :</label>
                                                <select class="form-control">
                                                    <option>Australia</option>
                                                    <option>America</option>
                                                    <option>Bangladesh</option>
                                                    <option>Canada</option>
                                                    <option>England</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>اسم البنك :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>رمز البنك :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>السويفت :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>اي بان :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label>اسم صاحب الحساب :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                            <div class="form-group">
                                                <label><span>*</span> رقم الحساب :</label>
                                                <input type="text" class="form-control" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-wizard-buttons two-buttons">
                                <button type="submit" name="saveSeller" class="btn">التالى</button>
                                <button type="button" class="btn btn-previous">السابق</button>
                            </div>
                        </fieldset>
                        <!-- Form Step 4 -->
                        <!-- popup -->
                      
                    </form>
                    <!-- Form Wizard -->
                </div>
            </div>

        </div>
    </section>
    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.6/js/bootstrap.min.js'></script>
    <script src="./script.js"></script>

</body>

</html>