var translations = {}
var canclose = false
var officer = false
var tempdata = null

function loadTranslations() {
  $.getJSON(`../locales/ui.json`, function(data) {
      translations = data;
  });
}

function translate(textKey) {
  if (translations && translations[textKey]) {
      return translations[textKey];
  } else {
      return textKey;
  }
}

const CameraApp = new Vue({
    el: "#camcontainer",

    data: {
        camerasOpen: false,
        cameraLabel: ":)",
        connectLabel: "CONNECTED",
        ipLabel: "192.168.0.1",
        dateLabel: "04/09/1999",
        timeLabel: "16:27:49",
    },

    methods: {
        OpenCameras(label, connected, cameraId, time) {
            var today = new Date();
            var date = today.getDate()+'/'+(today.getMonth()+1)+'/'+today.getFullYear();
            var formatTime = "00:" + time

            this.camerasOpen = true;
            this.ipLabel = "145.101.0."+cameraId;
            if (connected) {
                $("#blockscreen").css("display", "none");
                this.cameraLabel = label;
                this.connectLabel = "CONNECTED";
                this.dateLabel = date;
                this.timeLabel = formatTime;

                $("#connectedlabel").removeClass("disconnect");
                $("#connectedlabel").addClass("connect");
            } else {
                $("#blockscreen").css("display", "block");
                this.cameraLabel = "ERROR #400: BAD REQUEST"
                this.connectLabel = "CONNECTION FAILED";
                this.dateLabel = "ERROR";
                this.timeLabel = "ERROR";

                $("#connectedlabel").removeClass("connect");
                $("#connectedlabel").addClass("disconnect");
            }
            
        },

        CloseCameras() {
            this.camerasOpen = false;
            $("#blockscreen").css("display", "none");
        },

        UpdateCameraLabel(label) {
            this.cameraLabel = label;
        },

        UpdateCameraTime(time) {
            var formatTime = "00:" + time
            this.timeLabel = formatTime;
        },
    }
});

HeliCam = {}
Databank = {}
Fingerprint = {}
Alcoholtester = {}
FPScanner = {}
FPOpen = false
UsedFPButton = false

HeliCam.Open = function(data) {
    $("#helicontainer").css("display", "block");
    $(".scanBar").css("height", "0%");
}

HeliCam.UpdateScan = function(data) {
    $(".scanBar").css("height", data.scanvalue +"%");
}

HeliCam.UpdateVehicleInfo = function(data) {
    $(".vehicleinfo").css("display", "block");
    $(".scanBar").css("height", "100%");
    $(".heli-model").find("p").html("MODEL: " + data.model);
    $(".heli-plate").find("p").html("PLATE: " + data.plate);
    $(".heli-street").find("p").html(data.street);
    $(".heli-speed").find("p").html(data.speed + " KM/U");
}

HeliCam.DisableVehicleInfo = function() {
    $(".vehicleinfo").css("display", "none");
}

HeliCam.Close = function() {
    $("#helicontainer").css("display", "none");
    $(".vehicleinfo").css("display", "none");
    $(".scanBar").css("height", "0%");
}

Databank.Open = function() {
    $(".databank-container").css("display", "block").css("user-select", "none");
    $(".databank-container iframe").css("display", "block");
    $(".tablet-frame").css("display", "block").css("user-select", "none");
    $(".databank-bg").css("display", "block");
}

Databank.Close = function() {
    $(".databank-container iframe").css("display", "none");
    $(".databank-container").css("display", "none");
    $(".tablet-frame").css("display", "none");
    $(".databank-bg").css("display", "none");
    $.post("https://hd-policejob/closeDatabank", JSON.stringify({}));
}

Fingerprint.Open = function() {
    $(".fingerprint-container").fadeIn(150);
    $(".fingerprint-id").html("");
}

Alcoholtester.Open = function(user) {
    if (user) {
        $(".take-alcoholtester").css("display", "none")
        $('.blaaspijp').css('display', 'block')
        $(".alcoholtester-id").html("<div><p>BLOW</p></div>");
    } else {
        $(".blaaspijp").css("display", "none")
        $(".take-alcoholtester").css("display", "block")
        $(".alcoholtester-id").html("<div><p>PRESS POWER</p></div>");
    }
}

Fingerprint.Close = function() {
    $(".fingerprint-container").fadeOut(150);
    $.post('https://hd-policejob/closeFingerprint');
}

Alcoholtester.Close = function() {
    $(".alcoholtester-container").fadeOut(150);
    $.post('https://hd-policejob/closeAlcoholtester');
}

Fingerprint.Update = function(data) {
    $(".fingerprint-id").html("<div class='fingerprint-screen'><img src="+data.Headshot+"></img><div class='line'></div><p style='padding-top:6vh'>Name:<br><b>"+data.Name+"</b></p><p>Fingerprint id:<br><b>"+data.Fingerprint+"</b></p><p>Citizenid:<br><b>"+data.Citizenid+"</b></p></div>");
}

Alcoholtester.Update = function(promille) {
    $(".alcoholtester-id").html("<div><p>ANALYZING</p></div>");
    setTimeout(function() {
        $(".alcoholtester-id").html("<div><p>RESULT</p><p>"+promille+"</p></div>");
        setTimeout(function(){
            Alcoholtester.Close();
        }, 6000);
    }, 6000);
}

// FINGERPRINT SCANNER 

FPScanner.Open = function() {
    officer = true
    $('.scaner').css('display', 'block')
    $('.scanner-text').html(translate("scanner"))
}

FPScanner.OpenOther = function() {
    $('.scaner').css('display', 'block')
    FPOpen = true
    $('.close-button').css('color', '#63E10E')
    $('.close-button').css('border', '0.15vw solid #63E10E')
    $('.second-screen').css('display', 'block')
    $('.scanner-text-2').html(translate("scan_finger"))
    $('#second-info').html(translate("puton_plate"))
    $('.fingerprint').css('display', 'block')
}

FPScanner.Close = function() {
    if (canclose) {
        FPOpen = false
        UsedFPButton = false
        officer = false
        tempdata = null
        $('.scaner').css('display', 'none')
        $('.scanner-text-2').html('')
        $('.close-button').css('color', '#E31718')
        $('.close-button').css('border', '0.15vw solid #E31718')
        $('.first-screen').css('display', 'none')
        $('.second-screen').css('display', 'none')
        $('.fingerprint').css('display', 'none')
        $('.finish-screen').css('display', 'none')
        $(".user-photo").attr("src", "./images/user2.png");
        $.post('https://hd-policejob/closeFPScanner');
    }
}

FPScanner.DoFingerScanAnim = function() {
    var styleElem = document.head.appendChild(document.createElement("style"));
    styleElem.innerHTML = ".fp-scan .fingerprint::before {display: block;}";
    var styleElem = document.head.appendChild(document.createElement("style"));
    styleElem.innerHTML = ".fp-scan .fingerprint::after {display: block;}";
}

FPScanner.StopFingerScanAnim = function() {
    var styleElem = document.head.appendChild(document.createElement("style"));
    styleElem.innerHTML = ".fp-scan .fingerprint::before {display: none;}";
    var styleElem = document.head.appendChild(document.createElement("style"));
    styleElem.innerHTML = ".fp-scan .fingerprint::after {display: none;}";
}

FPScanner.UpdateFSData = function(data, img){
    $('.fingerprint').css('display', 'block')
    UsedFPButton = true
    FPScanner.DoFingerScanAnim()
    $('.scanner-text-2').html(translate("scanning"))
    setTimeout(() => {
        FPScanner.StopFingerScanAnim()
        $('.scanner-text-2').html(translate("analyzing"))
        setTimeout(() => {
            $('.second-screen').css('display', 'none')
            $('.finish-screen').css('display', 'block')
            $('.scanner-title').html(translate("fscan_title"))
            $(".user-photo").attr("src", img);
            $('#cid').html(translate("cid") +'<span class="info-comment"> ' +data.citizen+'</span>')
            $('#name').html(translate("name") +'<span class="info-comment"> ' +data.name+'</span>')
            $('#dob').html(translate("dob") +'<span class="info-comment"> ' +data.dob+'</span>')
            $('#country').html(translate("country") +'<span class="info-comment"> ' +data.nation+'</span>')
            $('#gender').html(translate("gender") +'<span class="info-comment"> ' +data.gender+'</span>')
            $('#fid').html(translate("fid") +'<span class="info-comment" id="finger-id"> ' +data.id+'</span>')
            $('#copy-fid').html(translate("copy_fid"))
            $('#print-info').html(translate("print_info"))
            $('#remove-info').html(translate("remove_info"))
            if (!officer){
                $('.button-list').css('display', 'none')
            } else {
                $('.button-list').css('display', 'flex')
            }
        }, 2000);
    }, 5000);
}

$(document).on('click', '.close-button', function(){
    if (FPOpen){
        if (canclose){
            FPOpen = false
            FPScanner.Close()
        }
    } else {
        FPOpen = true
        $('.close-button').css('color', '#63E10E')
        $('.close-button').css('border', '0.15vw solid #63E10E')
        $('.first-screen').css('display', 'block')
        $('#load').html(translate("starting"))
        setTimeout(function(){
            $('#load').html(translate("running"))
            $('.scanner-text-2').html(translate("wait_input"))
            setTimeout(function(){
                $('.first-screen').css('display', 'none')
                $('.second-screen').css('display', 'block')
                $('.scanner-title').html(translate("sscan_title"))
                $('#second-info').html(translate("wait_scan"))
                $.post('https://hd-policejob/StartFingerScan')
                canclose = true
            }, 2000);
        }, 5000);
    }
})

$(document).on('click', '.fingerprint', function(){
    if (!(UsedFPButton)){
        UsedFPButton = true
        canclose = true
        $.post('https://hd-policejob/SendFingerScan');
    }
})

$(document).on('click', '#copy-fid', function(){
    var div = document.getElementById('finger-id');
    var textArea = document.createElement('textarea');
    textArea.style.opacity = 0;
    textArea.value = div.innerText;
    document.body.appendChild(textArea);
    textArea.select();
    try {
        $('#copy-fid').css('background', '#006700')
        document.execCommand('copy');
        setTimeout(function() {
            $('#copy-fid').css('background', '#FE6631')
        }, 2000);
    } catch {}
})

$(document).on('click', '#print-info', function(){
    $('#print-info').css('background', '#006700')
    setTimeout(function() {
        $('#print-info').css('background', '#FE6631')
    }, 2000);
    $.post("https://hd-policejob/printFingerData", JSON.stringify(tempdata));
})

// END FINGERPRINT SCANNER

$(document).on('click', '.take-fingerprint', function(){
    $.post('https://hd-policejob/doFingerScan');
})

$(document).on('click', '.take-alcoholtester', function(){
    $('.take-alcoholtester').css('display', 'none')
    $(".alcoholtester-id").html("<div><p>WAITING</p></div>");
    $.post('https://hd-policejob/doAlcoholTest');
})

$(document).on('click', '.blaaspijp', function(){
    $('.blaaspijp').css('display', 'none')
    $(".alcoholtester-id").html("<div><p>BLOWING</p></div>");
    setTimeout(function() {
        $(".alcoholtester-id").html("<div><p>WAITING</p></div>");
        $.post('https://hd-policejob/startBlowing');
    }, 4000);
})

document.onreadystatechange = () => {
    if (document.readyState === "complete") {
        loadTranslations()
        window.addEventListener('message', function(event) {
            if (event.data.type == "enablecam") {
                CameraApp.OpenCameras(event.data.label, event.data.connected, event.data.id, event.data.time);
            } else if (event.data.type == "disablecam") {
                CameraApp.CloseCameras();
            } else if (event.data.type == "updatecam") {
                CameraApp.UpdateCameraLabel(event.data.label);
            } else if (event.data.type == "updatecamtime") {
                CameraApp.UpdateCameraTime(event.data.time);
            } else if (event.data.type == "heliopen") {
                HeliCam.Open(event.data);
            } else if (event.data.type == "heliclose") {
                HeliCam.Close();
            } else if (event.data.type == "heliscan") {
                HeliCam.UpdateScan(event.data);
            } else if (event.data.type == "heliupdateinfo") {
                HeliCam.UpdateVehicleInfo(event.data);
            } else if (event.data.type == "disablescan") {
                HeliCam.DisableVehicleInfo();
            } else if (event.data.type == "databank") {
                canclose = true
                Databank.Open();
            } else if (event.data.type == "closedatabank") {
                Databank.Close();
            } else if (event.data.type == "fingerprintOpen") {
                canclose = true
                Fingerprint.Open();
            } else if (event.data.type == "fingerprintClose") {
                Fingerprint.Close();
            } else if (event.data.type == "updateFingerprintId") {
                Fingerprint.Update(event.data);
            } else if (event.data.type == "openAlcoholTester") {
                canclose = true
                var user = event.data.user
                $(".alcoholtester-container").css("display", "block");
                Alcoholtester.Open(user);
            } else if (event.data.type == "closeAlcoholTester") {
                Alcoholtester.Close();
            } else if (event.data.type == "updateAlcoholTester") {
                Alcoholtester.Update(event.data.promille);
            } else if (event.data.type == 'openFPScanner'){
                FPScanner.Open()
            } else if (event.data.type == 'openFPScannerOther'){
                FPScanner.OpenOther()
            } else if (event.data.type == 'updateFingerData'){
                var data = event.data.fdata
                var img = event.data.photo
                tempdata = data
                FPScanner.UpdateFSData(data, img) 
            }
        });
    };
};

$(document).on('keydown', function() {
    switch(event.keyCode) {
        case 27: // ESC
            if (canclose){
                Databank.Close();
                Fingerprint.Close();
                Alcoholtester.Close();
                FPScanner.Close()
            }
            break;
    }
});
