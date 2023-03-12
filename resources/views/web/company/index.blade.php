<x-front-layout title="Company">
    <section class="mt-3 mt-lg-5">
        <div class="container">
            <div class="rounded-4 py-5 bg-light d-flex align-items-center justify-content-around flex-column flex-md-row shadow-sm">
                <div class="page-title ms-5 position-relative">
                    <h1 class="fw-bold">انضم لشبكة موزعين سبيد</h1>
                    <p>تفتخر سبيد بكونها الموزع والوكيل الوحيد للعديد من الماركات العالمية <br> التي لها اسم وعلامة في صناعة التكنولوجيا حول العالم</p>
                </div>
                <div class="page-img-hero">
                    <img src="{{ asset('assets/images/distributers-hero.png') }}" class="img-fluid" alt="camera">
                </div>
            </div>
        </div>
    </section>

    <section class="my-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 px-lg-5 mb-4">
                    <h5 class="fw-bold text-color mb-4">مميزات الانضمام لشبكة موزعين سبيد</h5>
                    <p class="text-color mb-3">يعد توزيع المنتج (أو نشره) واحدًا من العناصر الأربعة المكونة لخليط التسويق. والتوزيع هو عبارة عن عملية تتمثل في إتاحة المنتج أو الخدمة للاستخدام أو الاستهلاك من خلال مستهلك أو مستخدم تجاري، من خلال استخدام وسائل مباشرة أو باستخدام وسائل غير مباشرة من خلال الوسطاء.</p>
                    <p class="text-color mb-3">قنوات التوزيع بمفهومها الواسع عبارة عن وسيلة لتنظيم النشاط الخاص بتحريك أو نقل السلعة من المنتج للمستهلك وهي بذلك تسد الفجوة التي تفصل بينهما من خلال مجموعة وسطاء تتمثل في الوكلاء والسماسرة إضافة إلى تجار الجملة وتجارة التجزئة. وبهدف عمل الوسيط لتحقيق منافع زمانية أو إمكانية ومنفعة ملكية من خلال توزيع المنتج أو الخدمة. اذن يشمل نشاط قناة التوزيع وظائف متعددة بعضها يختص بعملية تبادل المنتج أو السلعة كالبحوث اللازمة لتسهيل عملية التبادل ونشاط الترويج بوسائله المختلفة للتعريف بالسلعة أو الخدمة، الاتصالات لايجاد مشترين للسلعة، التجانس في شكل وحجم السلعة ومدى اشباعها لرغبات ومتطلبات المستهلكين. والبعض الآخر من الوظائف يختص بالوظائف والانشطة الخدمية ويشمل عادة أنظمة التوزيع لنقل وتخزين السلعة، التمويل اللازم لنشاط قنوات التوزيع وتحمل المخاطرة التي قد تنشأ من استخدام قنوات توزيع غير ملائمة.</p>
                    <p class="text-color mb-3">وتتكون قناة التوزيع أو منفذ التوزيع من مستويات للتوزيع بداية بالمنتج ونهاية للمستهلك أو المستفيد. وكل وكالة أو مستوى توزيع في القناة ينجز عملا معينا يساهم في انسياب السلعة ونقل ملكيتها لموقع الاستهلاك. بمعنى استخدام عدد من الوسطاء يمثلون مستويات التوزيع امختلفة ومن ثم يختلف طول قناة التوزيع على النحو التالى :</p>
                    <ol class="mb-5">
                        <li>قناة توزيع تتكون من المنتج الذي يبيع السلعة مباشرة للمستهلك أو المستخدم النهائى لها.</li>
                        <li>قناة توزيع تتكون من المنتج ووسيط واحد يمثل في تاجر التجزئة إذا كانت السلعة استهلاكية أو وكيل البيع إذا كانت السلعة صناعية ثم أخيرا المستهلك النهائى للسلعة.</li>
                        <li>قناة توزيع تتكون من المنتج ووسيطين يمثلهما تاجر الجملة وتاجر التجزئة في حالة السلع الاستهلاكية ووكيل البيع والموزع في حالة السلع الصناعية الاستهلاكية ووكيل البيع والموزع في حالة السلع الصناعية فالمستهلك النهائى للسلعة.</li>
                        <li>قناة توزيع تتكون من المنتج وثلاثة وسطاء يمثلهم تاجر الجملة والسمسار وتاجر التجزئة فالمستهلك أو المستخدم النهائى للسلعة.</li>
                    </ol>
                    <p>
                        <span class="text-muted">بتسجيل حساب جديد مع سبيد أنت توافق على</span>
                        <a href="" class="text-main-color fw-bold">الشروط والاحكام</a>
                    </p>
                </div>

                <div class="col-lg-5 px-lg-5 mb-4">
                    <div class="card py-5 shadow-sm">
                        <form action="{{ route('register', ['type' => 'service_provider']) }}" method="POST" class="px-md-5 px-2" enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="type" value="service_provider">
                            <div class="text-center mb-4">
                                <p class="main-title position-relative fw-bold mx-auto mb-1">بيانات الشركة</p>
                                <span>يرجى ادخال التفاصيل الخاصة بالشركة</span>
                            </div>

                            {{-- Start Company Name --}}
                            <div class="form-floating mb-3">
                                <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                     src="{{ asset('assets/icon/storefront.svg') }}">
                                <input type="text" class="form-control rounded-3 ps-5 @error('company_name') is-invalid @enderror" name="company_name" id="floatingInput"
                                       placeholder="اسم الشركة">
                                <label class="ps-5" for="floatingInput">اسم الشركة</label>
                                @error('company_name')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            {{-- End Company Name --}}

                            {{-- Start Company Tax Number --}}
                            <div class="floating-file-input mb-3">
                                <input type="file" name="company_tax_number" id="company_tax_number" class="@error('company_tax_number') is-invalid @enderror">
                                <label for="company_tax_number" class="w-100 rounded-3">
                                    <span style="padding-right:35px !important;">تحميل البطاقة الضريبية</span>
                                    <img class="position-absolute top-50 translate-middle-y" style="right: 3.6rem;top: 300px !important;"
                                         src="{{ asset('assets/icon/services.svg') }}">
                                </label>
                                @error('company_tax_number')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            {{-- End Company Tax Number --}}

                            {{-- Start Company Commercial Record Number --}}
                            <div class="floating-file-input mb-3">
                                <input type="file" name="company_commercial_record_number" id="company_commercial_record_number" class="@error('company_commercial_record_number') is-invalid @enderror">
                                <label for="company_commercial_record_number" class="w-100 rounded-3" >
                                    <span style="padding-right:35px !important;">تحميل السجل التجاري</span>
                                    <img class="position-absolute top-50 translate-middle-y" style="right: 3.6rem;top: 228px !important;"
                                         src="{{ asset('assets/icon/document.svg') }}">
                                </label>
                                @error('company_commercial_record_number')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            {{-- End Company Commercial Record Number --}}

                            <div class="text-center mb-4">
                                <p class="main-title position-relative fw-bold mx-auto mb-1">تفاصيل الحساب</p>
                                <span>أدخل بياناتك كمسؤول عن الحساب</span>
                            </div>

                            {{-- Socail Login --}}
                            <div class="bg-light mb-4 p-3 border-0 rounded-4 d-flex align-items-center justify-content-between">
                                <p class="text-color fw-bold mb-0">ادخل بإحدى بمنصات التواصل الاجتماعي</p>
                                <div class="d-flex">
                                    <button class="btn btn-sm btn-white rounded-3">
                                        <img src="{{ asset('assets/icon/social_google.svg') }}">
                                    </button>
                                    <button class="btn btn-sm btn-white rounded-3 ms-2">
                                        <img src="{{ asset('assets/icon/social_facebook.svg') }}">
                                    </button>
                                </div>
                            </div>

                            {{-- Start Name --}}
                            <div class="form-floating mb-3">
                                <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                     src="{{ asset('assets/icon/user.svg') }}">
                                <input type="text" class="form-control rounded-3 ps-5 @error('name') is-invalid @enderror" name="name" id="floatingInput" placeholder="الاسم">
                                <label class="ps-5" for="floatingInput">الاسم</label>
                                @error('name')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            {{-- End Name --}}

                            {{-- Start Mobile --}}
                            <div class="form-floating mb-3">
                                <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                     src="{{ asset('assets/icon/phone-2.svg') }}">
                                <input type="text" class="form-control rounded-3 ps-5 @error('mobile') is-invalid @enderror" name="mobile" id="floatingInput" placeholder="رقم الهاتف">
                                <label class="ps-5" for="floatingInput">رقم الهاتف</label>
                                @error('mobile')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            {{-- End Mobile --}}

                            {{-- Start Email --}}
                            <div class="form-floating mb-3">
                                <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                     src="{{ asset('assets/icon/email.svg') }}">
                                <input dir="rtl" type="email" class="form-control rounded-3 ps-5 @error('email') is-invalid @enderror" name="email" id="floatingInput" placeholder="البريد الاكتروني">
                                <label class="ps-5" for="floatingInput">البريد الالكتروني</label>
                                @error('email')
                                    <div class="text-danger">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                            {{-- End Email --}}

                            {{-- Start Password --}}
                            <div class="form-floating mb-3">
                                <img class="position-absolute top-50 translate-middle-y" style="right: 0.6rem"
                                     src="{{ asset('assets/icon/password.svg') }}">
                                <input type="text" class="form-control rounded-3 ps-5 @error('password') is-invalid @enderror" name="password" id="floatingInput" placeholder="كلمة المرور">
                                <label class="ps-5" for="floatingInput">كلمة المرور</label>
                                @error('password')
                                    <span class="text-danger">
                                        {{ $message }}
                                    </span>
                                @enderror
                            </div>
                            {{-- End Password --}}

                            {{-- Submit --}}
                            <div class="col">
                                <button type="submit" class="btn btn-primary py-2 rounded-3 w-100">
                                    <span class="me-auto">طلب انضمام</span>
                                    <span class="arrow ms-2">&#129128;</span>
                                </button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</x-front-layout>
