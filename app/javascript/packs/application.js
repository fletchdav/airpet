import "bootstrap";

import { initDashboardNavigation } from '../components/dashboard';
import { setAlertsTimeouts } from '../components/alert';
import { search } from '../components/search.js.erb';

if (document.querySelector(".alert")) {
  setAlertsTimeouts();
}

if (document.getElementById("test_search")) {
  search();
}

if (document.getElementById("tabresa1")) {
  initDashboardNavigation();
}
