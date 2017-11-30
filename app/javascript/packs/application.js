import "bootstrap";

import { initDashboardNavigation } from '../components/dashboard';
import { setAlertsTimeouts } from '../components/alert';

// app/javascript/packs/application.js
import "../plugins/flatpickr"

initDashboardNavigation();
setAlertsTimeouts();
