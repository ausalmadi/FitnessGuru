//
//  DataModel.swift
//  DocCreater
//
//  Created by student on 2021-01-10.
//

import SwiftUI
struct DataModel:Identifiable {
    let id = UUID()
    let name:String
    let imageName:String
    let description:String
    let URL:String
}
struct MockData {
    static let supplementList: [DataModel] = [
        DataModel(name: " Vitamin D", imageName: "D", description: "Vitamin D is a nutrient needed for health and to maintain strong bones. Vitamin D aids in the absorption of calcium and phosphorus in our bodies, helps bring calcium and phosphorus to our bones and teeth, and helps regulate how much calcium remains in our blood", URL: "https://en.wikipedia.org/wiki/Vitamin_D"),
        
        DataModel(name: "Omega 3", imageName: "omega", description: "Omega-3 fatty acids are found in foods, such as fish and flaxseed, and in dietary supplements, such as fish oil. The three main omega-3 fatty acids are alpha-linolenic acid (ALA), eicosapentaenoic acid (EPA), and docosahexaenoic acid (DHA). ALA is found mainly in plant oils such as flaxseed, soybean, and canola oils.", URL: "https://en.wikipedia.org/wiki/Omega-3_fatty_acid"),
        
        DataModel(name: "Multivitamins", imageName: "multivitamins", description: "The primary role of a multivitamin is to fill nutritional gaps and make sure people get their daily allowance of underconsumed nutrients like vitamins A, C, D, E and K, calcium, magnesium, dietary fiber, choline and potassium, Wong said.", URL: "https://en.wikipedia.org/wiki/Multivitamin")
        
    ]
    
    static let dightList: [DataModel] = [
        DataModel(name: "Eggs", imageName: "egg", description: "One egg has only 75 calories but 7 grams of high-quality protein, 5 grams of fat, and 1.6 grams of saturated fat, along with iron, vitamins, minerals, and carotenoids. The egg is a powerhouse of disease-fighting nutrients like lutein and zeaxanthin.", URL: "https://en.wikipedia.org/wiki/Egg_as_food"),
        
        DataModel(name: "Oatmeal", imageName: "Oatmeal", description: "Oats Are Incredibly Nutritious. Whole Oats Are Rich in Antioxidants, Including Avenanthramides ,Oats Contain a Powerful Soluble Fiber Called Beta-Glucan They Can Lower Cholesterol Levels and Protect LDL Cholesterol From Damage", URL: "https://en.wikipedia.org/wiki/Oat"
        ),
        DataModel(name: "Avovado", imageName: "avovado", description: "One ounce has 50 calories. Avocados are high in fat. But it's monounsaturated fat, which is a good fat that helps lower bad cholesterol, as long as you eat them in moderation. Avocados offer nearly 20 vitamins and minerals.", URL: "https://en.wikipedia.org/wiki/Avocado")
    ]
    
    static let workoutList: [DataModel] = [
        DataModel(name: " Bench Press", imageName: "benchPress", description: " The bench press is an upper-body weight training exercise in which the trainee presses a weight upwards while lying on a weight training bench. The exercise uses the pectoralis major, the anterior deltoids, and the triceps, among other stabilizing muscles. A barbell is generally used to hold the weight, but a pair of dumbbells can also be used", URL: "https://en.wikipedia.org/wiki/Bench_press"),
        
        DataModel(name: "Decline Bench Press", imageName: "declineBenchPress", description: "The decline bench press is an excellent exercise for strengthening your lower chest muscles. ... In a decline bench press, the bench is set to 15 to 30 degrees on a decline. This angle places your upper body on a downward slope, which activates the lower pectoral muscles as you push weights away from your body.", URL: "https://www.healthline.com/health/decline-bench#:~:text=The%20decline%20bench%20press%20is,strengthening%20your%20lower%20chest%20muscles.&text=In%20a%20decline%20bench%20press,weights%20away%20from%20your%20body."),
        
        DataModel(name: "Incline Bench Press", imageName: "inclineBenchPress", description: "The purpose of the incline press is to focus more of the work on the upper pecs. The main benefit in performing incline presses is to develop the upper portion of the pectoral muscles. When the bench is set at an incline (15 to 30 degrees), you activate your shoulders more since it's comparable to a shoulder press.", URL: "https://www.healthline.com/health/fitness-exercise/incline-vs-flat-bench#incline-bench")
    ]
}







