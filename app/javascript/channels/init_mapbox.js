import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 0 });
  };
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = 'pk.eyJ1IjoicmViZWMiLCJhIjoiY2toeXBubGcxMDM0ZjJ6cWt5bW0wcjR6OSJ9.P5Jo35JaNzLMZwiVDCyQtw'

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
