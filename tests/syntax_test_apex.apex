// SYNTAX TEST "Java (Apex).sublime-syntax"

public with sharing class ClassName {}
// <- meta.class.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java
//                       ^^^^^^^^^^^ meta.class.identifier.java
//^^^^ storage.modifier.java
//     ^^^^ storage.modifier.sharing.apex
//          ^^^^^^^ storage.modifier.sharing.apex
//                  ^^^^^ keyword.declaration.class.java
//                        ^^^^^^^^^ entity.name.class.java

public without sharing class ClassName {}
// <- meta.class.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java
//                          ^^^^^^^^^^^ meta.class.identifier.java
//^^^^ storage.modifier.java
//     ^^^^^^^ storage.modifier.sharing.apex
//             ^^^^^^^ storage.modifier.sharing.apex
//                     ^^^^^ keyword.declaration.class.java
//                           ^^^^^^^^^ entity.name.class.java

public inherited sharing class ClassName {}
// <- meta.class.java storage.modifier.java
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.java
//                            ^^^^^^^^^^^ meta.class.identifier.java
//^^^^ storage.modifier.java
//     ^^^^^^^^^ storage.modifier.sharing.apex
//               ^^^^^^^ storage.modifier.sharing.apex
//                       ^^^^^ keyword.declaration.class.java
//                             ^^^^^^^^^ entity.name.class.java

for(Type var : [SELECT Name FROM Venue__c WHERE Name IN :venueNames]) {}
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.query.apex meta.brackets.apex
//             ^ punctuation.section.brackets.begin.apex
//              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ source.sql.embedded.apex
//                                                                 ^ punctuation.section.brackets.end.apex

Double rev = [SELECT AnnualRevenue FROM Account
              WHERE Name = 'Acme'][0].AnnualRevenue;
//            ^^^^^^^^^^^^^^^^^^^^ meta.declaration.value.java meta.query.apex meta.brackets.apex
//                                ^^^ meta.declaration.value.java meta.variable.item-access.java meta.brackets.java