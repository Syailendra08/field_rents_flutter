import 'package:field_rents/widgets/method_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Payment Method",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.transparent,
      ),

     body: Padding(
  padding: const EdgeInsets.all(12),
  child: Column( // ⬅️ pindahin Column ke sini (hapus Container kalau gak perlu)
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Choose Payment',
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 2),
      Text(
        'Select your purchased payment method',
        style: GoogleFonts.poppins(
          fontSize: 13,
        ),
      ),

      const SizedBox(height: 16),

    
      PaymentCard(
        title: "Pay on Location",
        subtitle: "Cash Payment",
        description: "Pay with cash when you arrive on the location",
        icon: Icons.payments_outlined,
      ),

      const SizedBox(height: 10),

      PaymentCard(
        title: "Pay Via QRIS",
        subtitle: "Digital Payment",
        description: "Scan QR code to pay instantly with your e-wallet",
        icon: Icons.account_balance_wallet_outlined,
      ),
    ],
  ),
),
    );
  }
}