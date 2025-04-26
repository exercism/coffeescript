RD = require './relative-distance'

describe 'RelativeDistance', ->
  it 'Direct parent-child relation', -> 
    familyTree = {
        'Vera': ['Tomoko']
        'Tomoko': ['Aditi']   
    }
    results = RD.degreesOfSeparation familyTree, 'Vera', 'Tomoko'
    expect(results).toEqual 1

  xit 'Sibling relationship', ->
    familyTree = {
        'Dalia': ['Olga', 'Yassin']
    }
    results = RD.degreesOfSeparation familyTree, 'Olga', 'Yassin'
    expect(results).toEqual 1

  xit 'Two degrees of separation, grandchild', ->
    familyTree = {
        'Khadija': ['Mateo']
        'Mateo': ['Rami']
    }
    results = RD.degreesOfSeparation familyTree, 'Khadija', 'Rami'
    expect(results).toEqual 2

  xit 'Unrelated individuals', ->
    familyTree = {
        'Priya': ['Rami']
        'Kaito': ['Elif']
    }
    results = RD.degreesOfSeparation familyTree, 'Priya', 'Kaito'
    expect(results).toEqual -1

  xit 'Complex graph, cousins', ->
    familyTree = {
      'Aiko': ['Bao', 'Carlos']
      'Bao': ['Dalia', 'Elias']
      'Carlos': ['Fatima', 'Gustavo']
      'Dalia': ['Hassan', 'Isla']
      'Elias': ['Javier']
      'Fatima': ['Khadija', 'Liam']
      'Gustavo': ['Mina']
      'Hassan': ['Noah', 'Olga']
      'Isla': ['Pedro']
      'Javier': ['Quynh', 'Ravi']
      'Khadija': ['Sofia']
      'Liam': ['Tariq', 'Uma']
      'Mina': ['Viktor', 'Wang']
      'Noah': ['Xiomara']
      'Olga': ['Yuki']
      'Pedro': ['Zane', 'Aditi']
      'Quynh': ['Boris']
      'Ravi': ['Celine']
      'Sofia': ['Diego', 'Elif']
      'Tariq': ['Farah']
      'Uma': ['Giorgio']
      'Viktor': ['Hana', 'Ian']
      'Wang': ['Jing']
      'Xiomara': ['Kaito']
      'Yuki': ['Leila']
      'Zane': ['Mateo']
      'Aditi': ['Nia']
      'Boris': ['Oscar']
      'Celine': ['Priya']
      'Diego': ['Qi']
      'Elif': ['Rami']
      'Farah': ['Sven']
      'Giorgio': ['Tomoko']
      'Hana': ['Umar']
      'Ian': ['Vera']
      'Jing': ['Wyatt']
      'Kaito': ['Xia']
      'Leila': ['Yassin']
      'Mateo': ['Zara']
      'Nia': ['Antonio']
      'Oscar': ['Bianca']
      'Priya': ['Cai']
      'Qi': ['Dimitri']
      'Rami': ['Ewa']
      'Sven': ['Fabio']
      'Tomoko': ['Gabriela']
      'Umar': ['Helena']
      'Vera': ['Igor']
      'Wyatt': ['Jun']
      'Xia': ['Kim']
      'Yassin': ['Lucia']
      'Zara': ['Mohammed']
    }
    results = RD.degreesOfSeparation familyTree, 'Dimitri', 'Fabio'
    expect(results).toEqual 9

  xit 'Complex graph, no shortcut, far removed nephew', ->
    familyTree = {
      'Mina': ['Viktor', 'Wang']
      'Olga': ['Yuki']
      'Javier': ['Quynh', 'Ravi']
      'Tariq': ['Farah']
      'Viktor': ['Hana', 'Ian']
      'Diego': ['Qi']
      'Carlos': ['Fatima', 'Gustavo']
      'Hana': ['Umar']
      'Jing': ['Wyatt']
      'Sven': ['Fabio']
      'Zane': ['Mateo']
      'Isla': ['Pedro']
      'Quynh': ['Boris']
      'Kaito': ['Xia']
      'Liam': ['Tariq', 'Uma']
      'Priya': ['Cai']
      'Qi': ['Dimitri']
      'Wang': ['Jing']
      'Yuki': ['Leila']
      'Xia': ['Kim']
      'Pedro': ['Zane', 'Aditi']
      'Uma': ['Giorgio']
      'Giorgio': ['Tomoko']
      'Gustavo': ['Mina']
      'Sofia': ['Diego', 'Elif']
      'Leila': ['Yassin']
      'Umar': ['Helena']
      'Aiko': ['Bao', 'Carlos']
      'Fatima': ['Khadija', 'Liam']
      'Oscar': ['Bianca']
      'Wyatt': ['Jun']
      'Ian': ['Vera']
      'Mateo': ['Zara']
      'Noah': ['Xiomara']
      'Celine': ['Priya']
      'Xiomara': ['Kaito']
      'Bao': ['Dalia', 'Elias']
      'Elif': ['Rami']
      'Farah': ['Sven']
      'Aditi': ['Nia']
      'Vera': ['Igor']
      'Boris': ['Oscar']
      'Khadija': ['Sofia']
      'Zara': ['Mohammed']
      'Dalia': ['Hassan', 'Isla']
      'Ravi': ['Celine']
      'Yassin': ['Lucia']
      'Elias': ['Javier']
      'Nia': ['Antonio']
      'Rami': ['Ewa']
      'Hassan': ['Noah', 'Olga']
      'Tomoko': ['Gabriela']
    }
    results = RD.degreesOfSeparation familyTree, 'Lucia', 'Jun'
    expect(results).toEqual 14

  xit 'Complex graph, some shortcuts, cross-down and cross-up, cousins several times removed, with unrelated family tree', ->
    familyTree = {
      'Mina': ['Viktor', 'Wang']
      'Olga': ['Yuki']
      'Javier': ['Quynh', 'Ravi']
      'Tariq': ['Farah']
      'Viktor': ['Hana', 'Ian']
      'Diego': ['Qi']
      'Carlos': ['Fatima', 'Gustavo']
      'Hana': ['Umar']
      'Jing': ['Wyatt']
      'Sven': ['Fabio']
      'Zane': ['Mateo']
      'Isla': ['Pedro']
      'Quynh': ['Boris']
      'Kaito': ['Xia']
      'Liam': ['Tariq', 'Uma']
      'Priya': ['Cai']
      'Qi': ['Dimitri']
      'Wang': ['Jing']
      'Yuki': ['Leila']
      'Xia': ['Kim']
      'Pedro': ['Zane', 'Aditi']
      'Uma': ['Giorgio']
      'Giorgio': ['Tomoko']
      'Gustavo': ['Mina']
      'Sofia': ['Diego', 'Elif']
      'Leila': ['Yassin']
      'Umar': ['Helena']
      'Aiko': ['Bao', 'Carlos']
      'Fatima': ['Khadija', 'Liam']
      'Oscar': ['Bianca']
      'Wyatt': ['Jun']
      'Ian': ['Vera']
      'Mateo': ['Zara']
      'Noah': ['Xiomara']
      'Celine': ['Priya']
      'Xiomara': ['Kaito']
      'Bao': ['Dalia']
      'Elif': ['Rami']
      'Farah': ['Sven']
      'Aditi': ['Nia']
      'Vera': ['Igor']
      'Boris': ['Oscar']
      'Khadija': ['Sofia']
      'Zara': ['Mohammed']
      'Dalia': ['Hassan', 'Isla']
      'Ravi': ['Celine']
      'Yassin': ['Lucia']
      'Nia': ['Antonio']
      'Rami': ['Ewa']
      'Hassan': ['Noah', 'Olga']
      'Tomoko': ['Gabriela']
    }
    results = RD.degreesOfSeparation familyTree, 'Wyatt', 'Xia'
    expect(results).toEqual 12
