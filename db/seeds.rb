# Create activity location address
activity_address = Address.create(
  address_line_1: "25 Whitehall Rd",
  city: "Toronto",
  state_or_province: "ON",
  postal_code: "M4W2C5",
  country: "Canada"
);

# Create org address
org_address = Address.create(
  address_line_1: "19 Whitehall Rd",
  city: "Toronto",
  state_or_province: "ON",
  postal_code: "M4W2C5",
  country: "Canada"
);

# Create event address
event_address = Address.create(
  address_line_1: "30 Whitehall Rd",
  city: "Toronto",
  state_or_province: "ON",
  postal_code: "M4W2C5",
  country: "Canada"
);

# Create activity
activity = Activity.create(name: "Tennis")

# Create activity location
activity_location = ActivityLocation.create(name: "Rosedale Park")

# Make association between activity location and activity
activity_location.activities << activity

# Make association between activity location and address
activity_location.addresses << activity_address

# Create organization location
org_loc = OrganizationLocation.create(name: "Orange Theory Fitness Yonge and Eglinton")

# Make association between organization location and activity
org_loc.activities << activity

# Make association between organization location and address
org_loc.addresses << org_address

# Create organization
org = Organization.create(name: "Orange Theory Fitness")

# Make association between organization location and organization
org.organization_locations << org_loc

# Create event
event = Event.create(name: "CIBC Run for the Cure")

# Make association between event and organization
org.events << event

# Make association between event and activity
event.activities << activity

# Make association between event and address
event.addresses << event_address