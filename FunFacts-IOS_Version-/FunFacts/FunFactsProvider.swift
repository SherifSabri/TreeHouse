//
//  FunFactsProvider.swift
//  FunFacts
//
//  Created by Sherif Sabri on 7/4/17.
//  Copyright © 2017 Sherif Sabri. All rights reserved.
//

import GameKit

///An Object containing a list of facts and method to return a random fact
struct FactProvider {
    let funFacts = ["It is impossible to lick your elbow",
                 "A shrimp's heart is in it's head",
                 "In a study of 200,000 ostriches over a period of 80 years, no one reported a single case where an ostrich buried its head in the sand.",
                 "It is physically impossible for pigs to look up into the sky",
                 "Wearing headphones for just an hour will increase the bacteria in your ear by 700 times",
                 "The cigarette lighter was invented before the match",
                 "A duck's quack doesn't echo, and no one knows why",
                 "If you try to suppress a sneeze, you can rupture a blood vessel in your head or neck and die",
                 "Outside the USA, Ireland is the largest software producing country in the world",
                 "A chip of silicon a quarter-inch square has the capacity of the original 1949 ENIAC computer, which occupied a city block.",
                 "Ostriches are often not taken seriously. They can run faster than horses, and the males can roar like lions",
                 "Sharks and rays are the only animals known to man that don't get cancer. Scientists believe this has something to do with the fact that they don't have bones, but cartilage",
                 "Cats often rub up against people and furniture to lay their scent and mark their territory. They do it this way, as opposed to the way dogs do it, because they have scent glands in their faces",
                 "On average, 12 newborns will be given to the wrong parents daily"]

    ///This function returns a randomly generated fact from the collection of stored facts
    func randomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: funFacts.count)
        return funFacts[randomNumber]
    }


}
