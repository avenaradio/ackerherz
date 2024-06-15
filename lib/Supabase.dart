import 'package:supabase_flutter/supabase_flutter.dart';


Future<String?> getLinkFromSupabase() async {
  String? link;
  int? fetchedLinkId;
  try {
    final fetchResponse = await Supabase.instance.client
        .from('link_table')
        .select('id, link') // Include 'id' to identify which link to update.
        .eq('reserved', false) // Assuming 'reserved' is a boolean column.
        .order('created_at', ascending: true) // Optional: order by creation date (if you have such a column).
        .limit(1) // Only fetch one link.
        .single(); // Get a single response, not a list.
    link = fetchResponse["link"];
    fetchedLinkId = fetchResponse['id'];
  } catch (e) {
    print('An error occurred: $e'); // Handle the exception here
    return null;
  }

  if(fetchedLinkId == null) {
    print('Error: fetchedLinkId = null');
    return null;
  }
  try {
    // Step 2: Mark the fetched link as reserved
    final updateResponse = await Supabase.instance.client
        .from('link_table')
        .update({'reserved': true}) // Update 'reserved' to true.
        .eq('id', fetchedLinkId); // Use the fetched link's ID for the condition.
    return link; // Return the link that was reserved.
  } catch (e) {
    print('An error occurred: $e'); // Handle the exception here
    return null;
  }
}