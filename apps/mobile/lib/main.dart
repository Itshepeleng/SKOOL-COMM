import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'app/skool_comm_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xiflaqtouxzyioteejpj.supabase.co',
    publishableKey: 'sb_publishable_ig_7vV5JLU5bz-IDVNcHTQ_9juI-8oc',
  );

  runApp(const SkoolCommApp());
}
