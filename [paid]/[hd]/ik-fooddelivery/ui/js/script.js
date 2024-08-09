
function closeUI(){
    window.postMessage({action:"close"});
    $.post('https://ik-fooddelivery/close');
    $("#restoimage").html("")
    $("#restoname").html("")
    $("tbody").html("")
}

function closeEnd(){
    $(".end").hide();
}

List = function(data) {
    var pLevel = data.plevel
	$.each(data.jobs, function (_, job){
        if (pLevel >= job.minlevel){
            $("tbody").append('<tr><td>' + job.contract_id+'</td><td><img src=nui://'+data.imgsrc+''+job.imagename+' width=35px> - '+job.foodname+' </td><td><span class="status text-success">&bull;</span> '+job.distance+' Km</td><td>$ '+job.price+'</td><td><a href="#" class="accept-order view" title="Accept Order" data-toggle="tooltip" data-contract='+job.contract_id+' data-route='+job.route+' data-resto='+job.resto+' data-food='+job.food+' data-distance='+job.distance+' data-price='+job.price+'><i class="material-icons">&#xE5C8;</i></a></td></tr>');
        } else {
            $("tbody").append('<tr><td>' + job.contract_id+'</td><td><img src=nui://'+data.imgsrc+''+job.imagename+' width=35px> - '+job.foodname+' </td><td><span class="status text-success">&bull;</span> '+job.distance+' Km</td><td>$ '+job.price+'</td><td><a href="#" class="no-order blocked" title="Accept Order" data-toggle="tooltip"><i class="material-icons">&#xE5CD;</i></a></td></tr>');
        }
	});
}

window.addEventListener("message", function(event){
    if(event.data.action == "open"){
        $("#restoimage").append('<img src="'+event.data.image+'" class="avatar" alt="Avatar"></a>')
        $("#restoname").append('<H1>'+event.data.restoname+'</H1>')
        $("#easytime-card").show();
        $("#easytime-card").fadeIn();
        $("#easytime-card").slideDown(500);
        if(Array.isArray(event.data.jobs)) {
            List(event.data)
        } else {
            $("tbody").append('<tr><td colspan="5">There are no orders for this restaurant..</td></tr>')
        }
    } else if (event.data.action == "end"){
        $(".end").show();
        $("#totalexp").text(event.data.experience)
        $("#money").text(event.data.payout)
        setTimeout(function() { closeEnd(); }, 7000);
    } else if(event.data.action == "close"){
        $("#easytime-card").slideUp(300);
    }
});

$("#easytime-button-close").on("click", function() {
    window.postMessage({action:"close"});
    $.post('https://ik-fooddelivery/close');
    $("#restoimage").html("")
    $("#restoname").html("")
    $("tbody").html("")
    closeUI();
})

$(document).ready(function() {
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
      });
})

$(document).on("click", ".accept-order", function () {
	contract = $(this).data('contract');
	resto = $(this).data('resto');
	food = $(this).data('food');
	distance = $(this).data('distance');
	price = $(this).data('price');
	route = $(this).data('route');
	$.post('https://ik-fooddelivery/StartDelivery', JSON.stringify({
        contract : contract,
        resto : resto,
		food : food,
		distance : distance,
		price : price,
		route : route,
    }))
	closeUI();
});

window.addEventListener("keydown", (e) => {
    if (e.code == "Escape" || e.key == "Escape") {
        window.postMessage({action:"close"});
        $.post('https://ik-fooddelivery/close');
        $("#restoimage").html("")
        $("#restoname").html("")
        $("tbody").html("")
        closeUI();
    }
});
