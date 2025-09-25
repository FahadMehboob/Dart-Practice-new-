import 'all_classes.dart';
import 'ride_status_enum.dart';

void main(List<String> args) {
  // Rider create
  Rider rider = Rider();
  rider.name = "Adil";
  rider.email = "adil@gmail.com";
  rider.phoneNumber = "03456789120";
  rider.bookRide();

  // Driver create
  Driver driver = Driver();
  driver.name = "Jawad";
  driver.email = "jawad@gmail.com";
  driver.phoneNumber = "031234567890";

  // Ride create
  StandardRide ride = StandardRide(distance: 12, baseFare: 50, perKmRate: 20);

  // Assign Rider & Driver
  ride.rider = rider;
  ride.driver = driver;
  ride.rideStatus = RideStatus.PENDING;

  print("Ride Status: ${ride.rideStatus}");

  // Driver accepts ride
  driver.acceptRider();
  ride.rideStatus = RideStatus.ACCEPTED;
  print("Ride Status: ${ride.rideStatus}");

  // Location Tracking
  ride.currentLocation();

  // Fare Calculation
  double fare = ride.calculateFare();
  print("Fare to be paid: Rs. $fare");

  // Payment
  PaymentMethod payment =
      CardPayment(); // Change to CashPayment / WalletPayment
  payment.pay(fare);

  // Ride complete
  ride.rideStatus = RideStatus.COMPLETED;
  print("Ride Status: ${ride.rideStatus}");
}
