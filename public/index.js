$(document).ready(function() {
  $("form").submit(function(e) {
    $("#notices div").hide();
    e.preventDefault();

    if ($("form input#email").val() === "") {
      $("#notices #error").show();
    } else {
      $.post("/signup", $(this).serialize(), function() {
        $("#notices #success").show();
        $("form input#email").val("");
      })
      .error(function() {
        $("#notices #error").show();
      });
    }
  });
});