import 'dart:convert';

import 'package:supabase/supabase.dart';

const supabaseUrl = 'https://zcqxlrvvdpizsjqowaqa.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpjcXhscnZ2ZHBpenNqcW93YXFhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTE1NTQ0NjEsImV4cCI6MTk2NzEzMDQ2MX0.sHzGyYc8Ml6lewDRB7EkZprih6A8chLhbq5YONnlZiA';

class SupabaseManager {
  final client = SupabaseClient(supabaseUrl, supabaseKey);

  void signUpUser(String email, String password) async {
    await client.auth.signUp(email, password);
  }

  Future<dynamic> getdata() async {
    var response = await client.from('Customer Information').select().execute();
    if (response.error == null) {
      final r = response.toJson()['data'][1];
      return r;
    }
  }

  addData(String friendName) async {
    await client.from('datatable').insert([{'name': friendName}]).execute();
  }
}