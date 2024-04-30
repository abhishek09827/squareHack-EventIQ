import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ListCustomersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListCustomers',
      apiUrl: 'https://connect.squareupsandbox.com/v2/customers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer EAAAl1U7i5arAt4cxq0VjQRfQPGAD9qcC_dwBS9uqOIug7c18MJXassdKOOGW1J9',
        'Square-Version': '2024-04-17',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? at(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? uat(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].given_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fname(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].family_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? add(dynamic response) => getJsonField(
        response,
        r'''$.customers[:].address''',
        true,
      ) as List?;
  static List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].email_address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? add1(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].address.address_line_1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? locality(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].address.locality''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? add2(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].address.administrative_district_level_1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pincode(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].address.postal_code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? country(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].address.country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ref(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].reference_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cname(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].company_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? pref(dynamic response) => getJsonField(
        response,
        r'''$.customers[:].preferences''',
        true,
      ) as List?;
  static List<String>? source(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].creation_source''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dob(dynamic response) => (getJsonField(
        response,
        r'''$.customers[:].birthday''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? gid(dynamic response) => getJsonField(
        response,
        r'''$.customers[:].group_ids''',
        true,
      ) as List?;
  static List? sid(dynamic response) => getJsonField(
        response,
        r'''$.customers[:].segment_ids''',
        true,
      ) as List?;
}

class ListItemsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ListItems',
      apiUrl: 'https://connect.squareupsandbox.com/v2/catalog/list?types=ITEM',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer EAAAl1U7i5arAt4cxq0VjQRfQPGAD9qcC_dwBS9uqOIug7c18MJXassdKOOGW1J9',
        'Square-Version': '2024-04-17',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.objects[:].item_data''',
        true,
      ) as List?;
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.objects[:].item_data.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dec(dynamic response) => (getJsonField(
        response,
        r'''$.objects[:].item_data.description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? type(dynamic response) => getJsonField(
        response,
        r'''$.objects[:].item_data.variations''',
        true,
      ) as List?;
  static List<String>? color(dynamic response) => (getJsonField(
        response,
        r'''$.objects[:].item_data.variations[:].item_variation_data.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? price(dynamic response) => getJsonField(
        response,
        r'''$.objects[:].item_data.variations[:].item_variation_data.price_money''',
        true,
      ) as List?;
  static List<String>? desc2(dynamic response) => (getJsonField(
        response,
        r'''$.objects[:].item_data.description_html''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? desc3(dynamic response) => (getJsonField(
        response,
        r'''$.objects[:].item_data.description_plaintext''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.objects[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class OrdersCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "order": {
    "location_id": "LRT0QKEHPMWE0",
    "customer_id": "1DY5ZFYAKC876MH6ZTP9BDQX20",
    "state": "OPEN",
    "line_items": [
      {
        "catalog_object_id": "Y6D5BNUEZFJWC3JTLR4YTMV6",
        "quantity": "1",
        "item_type": "ITEM"
      }
    ]
  },
  "idempotency_key": "34fce1b7-9250-4ada-92de-1660371b0b7b"
}''';
    return ApiManager.instance.makeApiCall(
      callName: ' Orders',
      apiUrl: 'https://connect.squareupsandbox.com/v2/orders',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer EAAAl1U7i5arAt4cxq0VjQRfQPGAD9qcC_dwBS9uqOIug7c18MJXassdKOOGW1J9',
        'Square-Version': '2024-04-17',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InvoiceCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "invoice": {
    "location_id": "LRT0QKEHPMWE0",
    "payment_requests": [
      {
        "request_type": "BALANCE",
        "due_date": "2025-03-24",
        "fixed_amount_requested_money": {
          "amount": 1429,
          "currency": "USD"
        }
      }
    ],
    "scheduled_at": "2024-04-27T09:29:48.731Z",
    "accepted_payment_methods": {
      "card": true
    },
    "order_id": "tIih1Dw3rAZ2xzNUEadVUgkEsGEZY",
    "delivery_method": "EMAIL",
    "primary_recipient": {
      "customer_id": "1DY5ZFYAKC876MH6ZTP9BDQX20"
    }
  },
  "idempotency_key": "3c7b735c-d034-49af-8336-f4114a994cfc"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invoice',
      apiUrl: 'https://connect.squareupsandbox.com/v2/invoices',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer EAAAl1U7i5arAt4cxq0VjQRfQPGAD9qcC_dwBS9uqOIug7c18MJXassdKOOGW1J9',
        'Square-Version': '2024-04-17',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GeminiCallCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "contents": [
    {
      "role": "user",
      "parts": [
        {
          "text": "Objective:
Generate event ideas tailored for a business looking to boost its customer support, targeting a youthful audience, with a preferred tone that is exciting and positive.

Event Type: {event_type}
Target Audience: {target_aud}
Preferred Tone: {tone}

Additional Details:
The business is seeking innovative ways to enhance its customer support services and engage with its youthful customer base in a fun and memorable way. The goal is to create positive experiences that leave a lasting impression and strengthen customer loyalty.

Instructions:
Using the provided criteria, generate creative event ideas that align with the business's objectives of improving customer support and fostering a positive relationship with its youthful clientele. Consider incorporating interactive elements, entertainment, and experiential activities to captivate and engage attendees while maintaining an exciting and upbeat atmosphere.

Criteria for Evaluation:
- Relevance to the business goals of boosting customer support.
- Appropriateness for the youthful target audience.
- Alignment with the preferred tone of excitement and positivity.
- Creativity and innovation in event concepts and activities.
- Potential for fostering positive customer experiences and building brand loyalty."
        }
      ]
    }
  ],
  "generationConfig": {
    "temperature": 1,
    "topK": 0,
    "topP": 0.95,
    "maxOutputTokens": 8192,
    "stopSequences": []
  },
  "safetySettings": [
    {
      "category": "HARM_CATEGORY_HARASSMENT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_HATE_SPEECH",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'geminiCall',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro-latest:generateContent?key=AIzaSyAVSHjy7mpfwjsStcK9YassCIL9BZOPKkA',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
}

class GeminiGroupCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "contents": [
    {
      "role": "user",
      "parts": [
        {
          "text": "Find the best networking matches for Current user: David, Interests: data science, machine learning, Goals: to collaborate on data-driven projects, Industry: technology among these candidates: Amanda (Interests: machine learning, artificial intelligence, Goals: to find a project partner, Industry: technology), Emily (Interests: data analytics, big data, Goals: to expand her professional network, Industry: technology), DaMichaelve (Interests: cloud computing, data security, Goals: to share knowledge on cloud solutions, Industry: technology), Sarah (Interests: artificial intelligence, robotics, Goals: to engage in AI research, Industry: technology).
Evaluate based on shared interests, complementary goals, and potential for professional synergy.
"
        }
      ]
    }
  ],
  "generationConfig": {
    "temperature": 1,
    "topK": 0,
    "topP": 0.95,
    "maxOutputTokens": 8192,
    "stopSequences": []
  },
  "safetySettings": [
    {
      "category": "HARM_CATEGORY_HARASSMENT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_HATE_SPEECH",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'geminiGroup',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro-latest:generateContent?key=AIzaSyAVSHjy7mpfwjsStcK9YassCIL9BZOPKkA',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
}

class GeminiCallItinaryCall {
  static Future<ApiCallResponse> call({
    String? interests = '',
    String? eventType = '',
    String? duration = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contents": [
    {
      "role": "user",
      "parts": [
        {
          "text": "Objective:
Generate a personalized event itinerary for an individual interested in $interests, looking for $eventType events, over a span of $duration.
Interests: {$interests}
Event Type: {$eventType}
Duration: {$duration}

Instructions:
Create a detailed itinerary that includes various sessions, keynotes, and activities that would appeal to someone with the interests specified. The itinerary should be feasible within the given duration and should maximize the attendee's engagement and learning opportunities.

Criteria for Evaluation:
- Relevance to the specified interests and event type.
- Practical arrangement of activities within the specified duration.
- Creativity in the selection and scheduling of sessions.
- Potential for maximizing attendee engagement and satisfaction.
The business is seeking innovative ways to enhance its customer support services and engage with its youthful customer base in a fun and memorable way. The goal is to create positive experiences that leave a lasting impression and strengthen customer loyalty.

Instructions:
Using the provided criteria, generate creative event ideas that align with the business's objectives of improving customer support and fostering a positive relationship with its youthful clientele. Consider incorporating interactive elements, entertainment, and experiential activities to captivate and engage attendees while maintaining an exciting and upbeat atmosphere.

Criteria for Evaluation:
- Relevance to the business goals of boosting customer support.
- Appropriateness for the youthful target audience.
- Alignment with the preferred tone of excitement and positivity.
- Creativity and innovation in event concepts and activities.
- Potential for fostering positive customer experiences and building brand loyalty."
        }
      ]
    }
  ],
  "generationConfig": {
    "temperature": 1,
    "topK": 0,
    "topP": 0.95,
    "maxOutputTokens": 8192,
    "stopSequences": []
  },
  "safetySettings": [
    {
      "category": "HARM_CATEGORY_HARASSMENT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_HATE_SPEECH",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    },
    {
      "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
      "threshold": "BLOCK_MEDIUM_AND_ABOVE"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'geminiCallItinary',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro-latest:generateContent?key=AIzaSyAVSHjy7mpfwjsStcK9YassCIL9BZOPKkA',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
}

class GeminiVisionCall {
  static Future<ApiCallResponse> call({
    String? image = '',
  }) async {
    final ffApiRequestBody = '''
{
  "contents":[
    {
      "parts":[
        {"text": "You are provided with a visual description of an event venue based on an uploaded image. The description includes details such as the size of the venue, the layout, visible seating arrangements, and any notable features that might influence capacity or usage. Based on this description, please generate a detailed analysis including:

1. The estimated seating capacity of the venue.
2. Recommended event types suitable for the space.
3. Suggested times for conducting events, considering the venue's characteristics and typical usage patterns.
4. Any additional considerations or recommendations for utilizing the space effectively.
Note : Give direct answers only"},
        {
          "inline_data": {
            "mime_type":"image/jpeg",
            "data": $image
          }
        }
      ]
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'geminiVision',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro-vision:generateContent?key=AIzaSyAVSHjy7mpfwjsStcK9YassCIL9BZOPKkA',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
