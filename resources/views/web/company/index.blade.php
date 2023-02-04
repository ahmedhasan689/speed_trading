@extends('layouts.front_layout')

@section('title', 'Company')

@section('content')
    <section class="title about-title order-details-title">
        <div class="container">
            <!-- <div class="row">
                <div class="col-md-12">

                </div>
            </div> -->

            <div class="about-title-content">

                <span class="line"></span>

                <div>
                    <h2 style="color: #0D55B1;">
                        انضم لشبكة موزعين سبيد
                    </h2>
                    <p style=" margin-right: 20px; margin-top: 8px; color: #0B2242;">
                        تفتخر سبيد بكونها الموزع والوكيل الوحيد للعديد من الماركات العالمية التي لها اسم وعلامة في
                        صناعة التكنولوجيا حول العالم                    </p>
                </div>

            </div>

    </section>

    <section class="subscripe" style="height: 1000px">
        <div class="container">
            <div class="row">
                <div class="col-6 d-flex justify-content-center">
                    <div class="forms">
                        <form action="">
                            <div class="top-form mb-4" style="border-bottom: 1px solid #ececec; text-align: center;">
                                <h5>
                                    بيانات الشركة
                                </h5>
                                <span>
                                    يرجى ادخال التفاصيل الخاصة بالشركة
                                </span>
                                <form action="">
                                    <div class="group">
                                        <img src="{{ asset('web/img/storefront.png') }}" height="24" width="24">
                                        <input id="myInput" class="form-control" type="text" placeholder="اسم الشركة" />
                                        <label id="myInput-label">اسم الشركة</label>
                                    </div>
                                    <div class="group">
                                        <img src="{{ asset('web/img/services.png') }}" height="24" width="24">
                                        <input id="myInput" class="form-control" type="text"
                                               placeholder="رقم البطاقة الضريبية" />
                                        <label id="myInput-label">رقم البطاقة الضريبية</label>
                                    </div>
                                    <div class="group">
                                        <img src="{{ asset('web/img/document.png') }}" height="24" width="24">
                                        <input id="myInput" class="form-control" type="text"
                                               placeholder="رقم السجل التجاري" />
                                        <label id="myInput-label">رقم السجل التجاري</label>
                                    </div>
                                </form>
                            </div>
                            <div class="bottom-form mt-4" style="text-align: center;">
                                <h5>
                                    تفاصيل الحساب
                                </h5>
                                <span>
                                    أدخل بياناتك كمسؤول عن الحساب
                                </span>
                                <div class="social-box" style="background-color: #ECEEEF;margin: 10px;
    height: 110px;
    justify-content: center;
    display: grid;">
                                    <span style="text-align: end;">ادخل بإحدى بمنصات التواصل الاجتماعي</span>
                                    <div style="flex-direction: row-reverse;">
                                        <button class="btn btn-light mx-2">
                                            <img src="{{ asset('web/img/social_facebook.png') }}">
                                        </button>
                                        <button class="btn btn-light">
                                            <img src="{{ asset('web/img/social_twitter.png') }}">
                                        </button>
                                    </div>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/user.png') }}" height="24" width="24">
                                    <input id="myInput" class="form-control" type="text" placeholder="الأسم" />
                                    <label id="myInput-label">الأسم</label>
                                </div>
                                <div class="group">
                                    <img src="{{ asset('web/img/phone2.png') }}" height="24" width="24">
                                    <input id="myInput" class="form-control" type="text" placeholder="رقم الهاتف" />
                                    <label id="myInput-label">رقم الهاتف</label>
                                </div>
                                <div class="group">
                                    <img src="{{ asset('web/img/email.png') }}" height="24" width="24">
                                    <input id="myInput" class="form-control" type="text"
                                           placeholder="البريد الإلكتروني" />
                                    <label id="myInput-label">البريد الإلكتروني</label>
                                </div>

                                <div class="group">
                                    <img src="{{ asset('web/img/password.png') }}" height="24" width="24">
                                    <input id="myInput" class="form-control" type="password"
                                           placeholder="كلمة المرور " />
                                    <label id="myInput-label">كلمة المرور </label>
                                </div>

                                <div class="group">
                                    <button class="btn">
                                        <img src="{{ asset('web/img/check.png') }}" alt="">
                                        حفظ
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-6 d-flex text-end flex-column">
                    <h3>
                        مميزات الانضمام لشبكة موزعين سبيد
                    </h3>
                    <span>
                        يعد توزيع المنتج (أو نشره) واحدًا من العناصر الأربعة المكونة لخليط التسويق. والتوزيع هو عبارة عن
                        عملية تتمثل في إتاحة المنتج أو الخدمة للاستخدام أو الاستهلاك من خلال مستهلك أو مستخدم تجاري، من
                        خلال استخدام وسائل مباشرة أو باستخدام وسائل غير مباشرة من خلال الوسطاء.
                    </span>
                    <span>
                        قنوات التوزيع بمفهومها الواسع عبارة عن وسيلة لتنظيم النشاط الخاص بتحريك أو نقل السلعة من المنتج
                        للمستهلك وهي بذلك تسد الفجوة التي تفصل بينهما من خلال مجموعة وسطاء تتمثل في الوكلاء والسماسرة
                        إضافة إلى تجار الجملة وتجارة التجزئة. وبهدف عمل الوسيط لتحقيق منافع زمانية أو إمكانية ومنفعة
                        ملكية من خلال توزيع المنتج أو الخدمة. اذن يشمل نشاط قناة التوزيع وظائف متعددة بعضها يختص بعملية
                        تبادل المنتج أو السلعة كالبحوث اللازمة لتسهيل عملية التبادل ونشاط الترويج بوسائله المختلفة
                        للتعريف بالسلعة أو الخدمة، الاتصالات لايجاد مشترين للسلعة، التجانس في شكل وحجم السلعة ومدى
                        اشباعها لرغبات ومتطلبات المستهلكين. والبعض الآخر من الوظائف يختص بالوظائف والانشطة الخدمية ويشمل
                        عادة أنظمة التوزيع لنقل وتخزين السلعة، التمويل اللازم لنشاط قنوات التوزيع وتحمل المخاطرة التي قد
                        تنشأ من استخدام قنوات توزيع غير ملائمة.
                    </span>
                    <span>
                        وتتكون قناة التوزيع أو منفذ التوزيع من مستويات للتوزيع بداية بالمنتج ونهاية للمستهلك أو
                        المستفيد. وكل وكالة أو مستوى توزيع في القناة ينجز عملا معينا يساهم في انسياب السلعة ونقل ملكيتها
                        لموقع الاستهلاك. بمعنى استخدام عدد من الوسطاء يمثلون مستويات التوزيع امختلفة ومن ثم يختلف طول
                        قناة التوزيع على النحو التالى :
                    </span>
                    <ul style="direction: rtl;">
                        <li>قناة توزيع تتكون من المنتج الذي يبيع السلعة مباشرة للمستهلك أو المستخدم النهائى لها</li>
                        <li>
                            قناة توزيع
                            تتكون من المنتج ووسيط واحد يمثل في تاجر التجزئة إذا كانت السلعة استهلاكية أو وكيل البيع إذا
                            كانت
                            السلعة صناعية ثم أخيرا المستهلك النهائى للسلعة
                        </li>
                        <li>
                            قناة توزيع تتكون من المنتج ووسيطين يمثلهما تاجر
                            الجملة وتاجر التجزئة في حالة السلع الاستهلاكية ووكيل البيع والموزع في حالة السلع الصناعية
                            الاستهلاكية ووكيل البيع والموزع في حالة السلع الصناعية فالمستهلك النهائى للسلعة</li>
                        <li>
                            قناة توزيع
                            تتكون من المنتج وثلاثة وسطاء يمثلهم تاجر الجملة والسمسار وتاجر التجزئة فالمستهلك أو المستخدم
                            النهائى للسلعة
                        </li>
                    </ul>
                    <small>
                        بتسجيل حساب جديد مع سبيد أنت توافق على <a href="#"> الشروط والاحكام</a>
                    </small>
                </div>
            </div>
        </div>
    </section>
@endsection
