import 'exception_handling.dart';
import 'location_track_mixin.dart';
import 'ride_status_enum.dart';

// Base User
abstract class User {
  String name = '';
  String email = '';
  String phoneNumber = '';
}

// Rider
class Rider extends User {
  String _paymentMethod = '';

  set setPaymentMethod(String paymentMethod) {
    _paymentMethod = paymentMethod;
  }

  String get getPaymentMethod => _paymentMethod;

  bookRide() {
    print("Rider $name is booking a ride");
  }
}

// Driver
class Driver extends User {
  String vehicalInfo = '';
  int _rating = 0;

  set setRating(int rating) {
    if (rating > 0 && rating <= 5) {
      _rating = rating;
    }
  }

  int get getRating => _rating;

  acceptRider() {
    print("Driver $name is accepting the ride");
  }
}

// Ride base class
abstract class Ride with LocationTrackMixin {
  Rider? rider;
  Driver? driver;
  RideStatus? rideStatus;

  double calculateFare();
}

class StandardRide extends Ride {
  double distance;
  double baseFare;
  double perKmRate;

  StandardRide(
      {required this.distance,
      required this.baseFare,
      required this.perKmRate});

  @override
  double calculateFare() {
    if (distance <= 0) {
      throw InvalidLocationException("Pickup and Drop location are same!");
    }
    double fare = baseFare + (distance * perKmRate);
    print("Standard Ride fare calculated: Rs. $fare");
    return fare;
  }
}

class LuxuryRide extends Ride {
  double distance;
  double baseFare;
  double perKmRate;
  double luxuryCharge;

  LuxuryRide({
    required this.distance,
    required this.baseFare,
    required this.perKmRate,
    this.luxuryCharge = 200,
  });

  @override
  double calculateFare() {
    if (distance <= 0) {
      throw InvalidLocationException("Pickup and Drop location are same!");
    }
    double fare = baseFare + (distance * perKmRate) + luxuryCharge;
    print("Luxury Ride fare calculated: Rs. $fare");
    return fare;
  }
}

// Payment System
abstract class PaymentMethod {
  pay(double amount);
}

class CashPayment extends PaymentMethod {
  @override
  pay(double amount) {
    print("Payment of Rs. $amount received in cash.");
  }
}

class CardPayment extends PaymentMethod {
  @override
  pay(double amount) {
    print("Payment of Rs. $amount received via card.");
  }
}

class WalletPayment extends PaymentMethod {
  @override
  pay(double amount) {
    print("Payment of Rs. $amount received via wallet.");
  }
}
