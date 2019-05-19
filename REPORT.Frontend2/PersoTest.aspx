<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoTest.aspx.cs" Inherits="ADLSA.EP.Frontend.PersoTest" %>


<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Free personality test - take it to find out why our readers say that this personality test is so accurate, “it&#039;s a little bit creepy.” No registration required!">
    <meta name="keywords" content="" />
    <meta name="author" content="">
    <meta property="fb:app_id" content="326516237427150" />

    <title>Test | perso</title>

    <link rel="apple-touch-icon" sizes="57x57"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180"
        href="https://storage.googleapis.com/neris/public/images/favicons/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" href="https://storage.googleapis.com/neris/public/images/favicons/favicon-32x32.png"
        sizes="32x32">
    <link rel="icon" type="image/png" href="https://storage.googleapis.com/neris/public/images/favicons/favicon-194x194.png"
        sizes="194x194">
    <link rel="icon" type="image/png" href="https://storage.googleapis.com/neris/public/images/favicons/favicon-96x96.png"
        sizes="96x96">
    <link rel="icon" type="image/png" href="https://storage.googleapis.com/neris/public/images/favicons/android-chrome-192x192.png"
        sizes="192x192">
    <link rel="icon" type="image/png" href="https://storage.googleapis.com/neris/public/images/favicons/favicon-16x16.png"
        sizes="16x16">
    <link rel="manifest" href="https://storage.googleapis.com/neris/public/images/favicons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="https://storage.googleapis.com/neris/public/images/favicons/mstile-144x144.png">
    <meta name="theme-color" content="#ffffff">


    <link rel="stylesheet" href="/Assets/css/main.css?v=14">

    <script>

        //(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        //    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        //        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        //})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        //ga('create', 'UA-27031617-1', 'auto');

    </script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body role="document">
    <div id="fb-root"></div>

    <script>
        window.fbAsyncInit = function () {
            FB.init({
                appId: '326516237427150',
                xfbml: true,
                version: 'v2.10'
            });
        };

        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <div class="main-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12 personality-test">
                    <div class="test-body">

                        <div class="progress-wrapper">
                            <div class="progress-tick">0</div>
                            <div class="progress">
                                <div class="progress-bar" role="progressbar">
                                </div>
                            </div>
                        </div>

                        <form method="POST" action="/" accept-charset="UTF-8" id="test-form">
                            <input name="_token" type="hidden" value="dhFFw72a3b3FW74EZEF42HZQcgyihiZUVb9Cx7Kt">

                            <div class="question-wrapper set1" data-question="1">
                                <div class="statement">
                                    You find it difficult to introduce yourself to other people.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off" id='cbxCand_SponJobsQuery'>
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set1" data-question="2">
                                <div class="statement">
                                    You often get so lost in thoughts that you ignore or forget your surroundings.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set1" data-question="3">
                                <div class="statement">
                                    You try to respond to your e-mails as soon as possible and cannot stand a messy inbox.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set1" data-question="4">
                                <div class="statement">
                                    You find it easy to stay relaxed even when there is some pressure.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set1" data-question="5">
                                <div class="statement">
                                    You do not usually initiate conversations.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set1" data-question="6">
                                <div class="statement">
                                    You rarely do something just out of sheer curiosity.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set2" data-question="7">
                                <div class="statement">
                                    You feel superior to other people.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set2" data-question="8">
                                <div class="statement">
                                    Being organized is more important to you than being adaptable.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set2" data-question="9">
                                <div class="statement">
                                    You are usually highly motivated and energetic.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set2" data-question="10">
                                <div class="statement">
                                    Winning a debate matters less to you than making sure no one gets upset.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set2" data-question="11">
                                <div class="statement">
                                    You often feel as if you have to justify yourself to other people.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set2" data-question="12">
                                <div class="statement">
                                    Your home and work environments are quite tidy.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set3" data-question="13">
                                <div class="statement">
                                    You do not mind being at the center of attention.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set3" data-question="14">
                                <div class="statement">
                                    You consider yourself more practical than creative.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set3" data-question="15">
                                <div class="statement">
                                    People can rarely upset you.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set3" data-question="16">
                                <div class="statement">
                                    Your travel plans are usually well thought out.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set3" data-question="17">
                                <div class="statement">
                                    It is often difficult for you to relate to other people’s feelings.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set3" data-question="18">
                                <div class="statement">
                                    Your mood can change very quickly.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set4" data-question="19">
                                <div class="statement">
                                    In a discussion, truth should be more important than people’s sensitivities.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set4" data-question="20">
                                <div class="statement">
                                    You rarely worry about how your actions affect other people.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set4" data-question="21">
                                <div class="statement">
                                    Your work style is closer to random energy spikes than to a methodical and organized approach.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set4" data-question="22">
                                <div class="statement">
                                    You are often envious of others.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set4" data-question="23">
                                <div class="statement">
                                    An interesting book or a video game is often better than a social event.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set4" data-question="24">
                                <div class="statement">
                                    Being able to develop a plan and stick to it is the most important part of every project.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set5" data-question="25">
                                <div class="statement">
                                    You rarely get carried away by fantasies and ideas.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set5" data-question="26">
                                <div class="statement">
                                    You often find yourself lost in thought when you are walking in nature.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set5" data-question="27">
                                <div class="statement">
                                    If someone does not respond to your e-mail quickly, you start worrying if you said something wrong.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set5" data-question="28">
                                <div class="statement">
                                    As a parent, you would rather see your child grow up kind than smart.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set5" data-question="29">
                                <div class="statement">
                                    You do not let other people influence your actions.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set5" data-question="30">
                                <div class="statement">
                                    When you sleep, your dreams tend to focus on the real world and its events.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set6" data-question="31">
                                <div class="statement">
                                    It does not take you much time to start getting involved in social activities at your new workplace.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set6" data-question="32">
                                <div class="statement">
                                    You are more of a natural improviser than a careful planner.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set6" data-question="33">
                                <div class="statement">
                                    Your emotions control you more than you control them.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set6" data-question="34">
                                <div class="statement">
                                    You enjoy going to social events that involve dress-up or role-play activities.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set6" data-question="35">
                                <div class="statement">
                                    You often spend time exploring unrealistic and impractical yet intriguing ideas.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set6" data-question="36">
                                <div class="statement">
                                    You would rather improvise than spend time coming up with a detailed plan.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set7" data-question="37">
                                <div class="statement">
                                    You are a relatively reserved and quiet person.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set7" data-question="38">
                                <div class="statement">
                                    If you had a business, you would find it very difficult to fire loyal but underperforming employees.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set7" data-question="39">
                                <div class="statement">
                                    You often contemplate the reasons for human existence.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set7" data-question="40">
                                <div class="statement">
                                    Logic is usually more important than heart when it comes to making important decisions.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set7" data-question="41">
                                <div class="statement">
                                    Keeping your options open is more important than having a to-do list.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set7" data-question="42">
                                <div class="statement">
                                    If your friend is sad about something, you are more likely to offer emotional support than suggest ways to deal with the problem.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set8" data-question="43">
                                <div class="statement">
                                    You rarely feel insecure.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set8" data-question="44">
                                <div class="statement">
                                    You have no difficulties coming up with a personal timetable and sticking to it.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set8" data-question="45">
                                <div class="statement">
                                    Being right is more important than being cooperative when it comes to teamwork.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set8" data-question="46">
                                <div class="statement">
                                    You think that everyone’s views should be respected regardless of whether they are supported by facts or not.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set8" data-question="47">
                                <div class="statement">
                                    You feel more energetic after spending time with a group of people.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set8" data-question="48">
                                <div class="statement">
                                    You frequently misplace your things.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set9" data-question="49">
                                <div class="statement">
                                    You see yourself as very emotionally stable.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set9" data-question="50">
                                <div class="statement">
                                    Your mind is always buzzing with unexplored ideas and plans.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set9" data-question="51">
                                <div class="statement">
                                    You would not call yourself a dreamer.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set9" data-question="52">
                                <div class="statement">
                                    You usually find it difficult to relax when talking in front of many people.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set9" data-question="53">
                                <div class="statement">
                                    Generally speaking, you rely more on your experience than your imagination.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set9" data-question="54">
                                <div class="statement">
                                    You worry too much about what other people think.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set10" data-question="55">
                                <div class="statement">
                                    If the room is full, you stay closer to the walls, avoiding the center.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set10" data-question="56">
                                <div class="statement">
                                    You have a tendency to procrastinate until there is not enough time to do everything.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set10" data-question="57">
                                <div class="statement">
                                    You feel very anxious in stressful situations.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set10" data-question="58">
                                <div class="statement">
                                    You believe that it is more rewarding to be liked by others than to be powerful.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set10" data-question="59">
                                <div class="statement">
                                    You have always been interested in unconventional and ambiguous things, e.g. in books, art, or movies.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>
                            <div class="question-wrapper set10" data-question="60">
                                <div class="statement">
                                    You often take initiative in social situations.
                                </div>
                                <div class="row decision">
                                    <div class="hidden-xs col-sm-3 caption left sets-answer" data-value="-3">Agree</div>
                                    <div class="col-xs-12 col-sm-6 options btn-group" data-toggle="buttons" role="group" aria-label="Options">
                                        <label class="btn btn-default option agree max sets-answer" data-value="-3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree med sets-answer" data-value="-2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option agree min sets-answer" data-value="-1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option neutral sets-answer" data-value="0">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree min sets-answer" data-value="1">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree med sets-answer" data-value="2">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                        <label class="btn btn-default option disagree max sets-answer" data-value="3">
                                            <input type="radio" name="options" autocomplete="off">
                                        </label>
                                    </div>
                                    <div class="hidden-xs col-sm-3 caption right sets-answer" data-value="3">Disagree</div>
                                </div>
                                <div class="row decision mobile visible-xs">
                                    <div class="col-xs-6 caption left">Agree</div>
                                    <div class="col-xs-6 caption right">Disagree</div>
                                </div>
                            </div>

                            <div class="test-submit-wrapper">
                                <div class="submit_wrapper setnext">
                                    <button class="btn btn-action btn-lg" id="nextbut" type="button" onclick="ga('send', 'event', 'button', 'click', 'takeTestNext');">
                                        <span>NEXT&nbsp;</span><span class="fa fa-caret-right"></span>
                                    </button>
                                </div>
                                <div class="submit_wrapper setres">
                                    <div class="alert alert-danger"></div>
                                    <button class="btn btn-action btn-lg" id="submbut" type="button" onclick="ga('send', 'event', 'button', 'click', 'takeTestComplete');">
                                        <span>RESULTS&nbsp;</span><span class="fa fa-caret-right"></span>
                                    </button>
                                </div>
                            </div>

                            <input type="hidden" name="code" value="">

                            <input id="a1" name="a1" type="hidden" value="">
                            <input id="a2" name="a2" type="hidden" value="">
                            <input id="a3" name="a3" type="hidden" value="">
                            <input id="a4" name="a4" type="hidden" value="">
                            <input id="a5" name="a5" type="hidden" value="">
                            <input id="a6" name="a6" type="hidden" value="">
                            <input id="a7" name="a7" type="hidden" value="">
                            <input id="a8" name="a8" type="hidden" value="">
                            <input id="a9" name="a9" type="hidden" value="">
                            <input id="a10" name="a10" type="hidden" value="">
                            <input id="a11" name="a11" type="hidden" value="">
                            <input id="a12" name="a12" type="hidden" value="">
                            <input id="a13" name="a13" type="hidden" value="">
                            <input id="a14" name="a14" type="hidden" value="">
                            <input id="a15" name="a15" type="hidden" value="">
                            <input id="a16" name="a16" type="hidden" value="">
                            <input id="a17" name="a17" type="hidden" value="">
                            <input id="a18" name="a18" type="hidden" value="">
                            <input id="a19" name="a19" type="hidden" value="">
                            <input id="a20" name="a20" type="hidden" value="">
                            <input id="a21" name="a21" type="hidden" value="">
                            <input id="a22" name="a22" type="hidden" value="">
                            <input id="a23" name="a23" type="hidden" value="">
                            <input id="a24" name="a24" type="hidden" value="">
                            <input id="a25" name="a25" type="hidden" value="">
                            <input id="a26" name="a26" type="hidden" value="">
                            <input id="a27" name="a27" type="hidden" value="">
                            <input id="a28" name="a28" type="hidden" value="">
                            <input id="a29" name="a29" type="hidden" value="">
                            <input id="a30" name="a30" type="hidden" value="">
                            <input id="a31" name="a31" type="hidden" value="">
                            <input id="a32" name="a32" type="hidden" value="">
                            <input id="a33" name="a33" type="hidden" value="">
                            <input id="a34" name="a34" type="hidden" value="">
                            <input id="a35" name="a35" type="hidden" value="">
                            <input id="a36" name="a36" type="hidden" value="">
                            <input id="a37" name="a37" type="hidden" value="">
                            <input id="a38" name="a38" type="hidden" value="">
                            <input id="a39" name="a39" type="hidden" value="">
                            <input id="a40" name="a40" type="hidden" value="">
                            <input id="a41" name="a41" type="hidden" value="">
                            <input id="a42" name="a42" type="hidden" value="">
                            <input id="a43" name="a43" type="hidden" value="">
                            <input id="a44" name="a44" type="hidden" value="">
                            <input id="a45" name="a45" type="hidden" value="">
                            <input id="a46" name="a46" type="hidden" value="">
                            <input id="a47" name="a47" type="hidden" value="">
                            <input id="a48" name="a48" type="hidden" value="">
                            <input id="a49" name="a49" type="hidden" value="">
                            <input id="a50" name="a50" type="hidden" value="">
                            <input id="a51" name="a51" type="hidden" value="">
                            <input id="a52" name="a52" type="hidden" value="">
                            <input id="a53" name="a53" type="hidden" value="">
                            <input id="a54" name="a54" type="hidden" value="">
                            <input id="a55" name="a55" type="hidden" value="">
                            <input id="a56" name="a56" type="hidden" value="">
                            <input id="a57" name="a57" type="hidden" value="">
                            <input id="a58" name="a58" type="hidden" value="">
                            <input id="a59" name="a59" type="hidden" value="">
                            <input id="a60" name="a60" type="hidden" value="">
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <div class="push"></div>
    </div>

    <div class="container" style="padding: 0;">
        <script src="/Scripts/ControlsJs/footer-vendors-v1.js?v=1"></script>
        <script src="/Scripts/ControlsJs/16p-core.js?v=6"></script>
    </div>
    
    <script src="/Scripts/ControlsJs/test-v1.js"></script>
    <script>

        jQuery(document).ready(function ($) {
            
            $('#test-form').on('click', '#cbxCand_SponJobsQuery', function (e) {
                //e.preventDefault();
                cbxCandClick_SponJobsQuery(this);
            });

        });
        
    </script>
</body>
</html>

