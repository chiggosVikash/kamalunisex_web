import 'package:designs/kamalunisexsalon/extension/context_extension.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/about_section/headline_text.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/contact_us/hours_open.dart';
import 'package:designs/kamalunisexsalon/features/home_page/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../url_launcher.dart';

class ContactUsContent extends StatelessWidget {
  final double width;
  final double vertSpace;
  const ContactUsContent(
      {super.key, required this.vertSpace, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadlineText(text: "Contact us"),
              SizedBox(
                height: context.height * vertSpace,
              ),
              Text(
                "Cancellation Policy",
                style: Theme.of(context).textTheme.titleLarge!.merge(
                      GoogleFonts.openSans(),
                    ),
              ),
              SizedBox(
                height: context.height * vertSpace,
              ),
              Text(
                '''Cancellations accepted up to 24 hours before the scheduled service.Within 24 hours of the service, cancellations will be charged 50% of the scheduled cost.''',
                textAlign: TextAlign.justify,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .merge(GoogleFonts.aBeeZee(color: Colors.grey.shade700)),
              ),
              SizedBox(
                height: context.height * (vertSpace + .03),
              ),
              ResponsiveBuilder(builder: (context, sizeInfo) {
                final btnHeight = sizeInfo.isMobile
                    ? context.height * .06
                    : context.height * .09;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomButton(
                        height: btnHeight,
                        title: "Message us on WhatsApp",
                        foregroundColor: Colors.white,
                        backgroundColor: context.colorScheme.secondary,
                        onPressed: () {
                          UrlLauncher.whatsapp(
                              phone: "8102685736", message: "Hello");
                        },
                        width: constraints.maxWidth * .55),
                    SizedBox(
                      height: context.height * vertSpace,
                    ),
                    CustomButton(
                        height: btnHeight,
                        title: "Call us",
                        foregroundColor: Colors.white,
                        backgroundColor: context.colorScheme.secondary,
                        onPressed: () {},
                        width: constraints.maxWidth * .55),
                  ],
                );
              }),
              SizedBox(
                height: context.height * .08,
              ),
              Text(
                "Kamal Unisex Salon",
                style: Theme.of(context).textTheme.titleLarge!.merge(
                      GoogleFonts.openSans(),
                    ),
              ),
              SizedBox(
                height: context.height * vertSpace,
              ),
              Text("Near GYM, above Bank of India, Kurthoul, Patna, Bihar",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .merge(GoogleFonts.aBeeZee(color: Colors.grey.shade700))),
              SizedBox(
                height: context.height * vertSpace,
              ),
              Text("Kamalunisexsalon@gmail.com",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyMedium!.merge(
                      GoogleFonts.openSans(
                          color: context.colorScheme.primary))),
              SizedBox(
                height: context.height * vertSpace,
              ),
              HoursOpen(vertSpace: vertSpace)
            ],
          );
        }));
  }
}
