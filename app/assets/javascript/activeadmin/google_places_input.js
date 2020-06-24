window.onload = function() {
    initGooglePlaces();
}

function initGooglePlaces() {
    google_places_inputs = document.querySelectorAll('.google-places-field');
    autocompletes = [];
    google_places_hidden_inputs = []
    google_places_label_inputs = []
    for(var i = 0; i < google_places_inputs.length; i++) {
        google_places_hidden_inputs.push(google_places_inputs[i].parentNode.firstChild)
        google_places_label_inputs.push(google_places_inputs[i].nextSibling)
    }

    for(var i = 0; i < google_places_inputs.length; i++) {
        initAutocomplete(google_places_inputs[i], i)
    }

    function initAutocomplete(element, i) {
        // Create the autocomplete object, restricting the search to geographical
        // location types.
        autocomplete = new google.maps.places.Autocomplete(
            /** @type {!HTMLInputElement} */(element));
        autocomplete.inputId = i;
        autocomplete.addListener('place_changed', fillInAddress);
        autocompletes.push(autocomplete);
    }

    function fillInAddress() {
        var place = this.getPlace();
        google_places_label_inputs[this.inputId].value = place.formatted_address
        google_places_hidden_inputs[this.inputId].value = place.formatted_address
    }
}