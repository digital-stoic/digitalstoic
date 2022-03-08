---
marp: true
theme: gaia
backgroundColor: white
---

<style>
    h1 {
        font-size: 1.5em;
    }
    h2 { 
        font-size: 1em;
    }
    h3 {
        font-size: .9em;
    }
    p, li {
        font-size: .8em;
    }
    img[alt~="center"] {
        display: block;
        margin: 0 auto;
    }
    section.title h1, section.title h2, section.title p {
        text-align: center;
    }
    section.full-image-bottom h1 {
        background-color: rgb(0, 0, 0, 0.8);
        margin: 7em -1em 0 -1em;
        padding: .5em 0 .5em 0em;
        font-size: 2em;
        color: white;
        text-align: center;
    }
    section.full-image-top h1 {
        background-color: rgb(0, 0, 0, 0.8);
        margin: -1em -1em 0 -1em;
        padding: .5em 0em .5em 0em;
        font-size: 2em;
        color: white;
        text-align: center;
    }
    section.split {
        display: grid;
        grid-template-columns: 500px 500px;
        grid-template-rows: 100px auto;
        grid-template-areas:
            "slideheading slideheading"
            "leftpanel rightpanel";
    }
    section.split h1 {
         grid-area: slideheading;
    }
    section.split .ldiv {
         grid-area: leftpanel;
    }
    section.split .rdiv {
         grid-area: rightpanel;
    }
</style>

<!-- _class: title -->

# How to Bridge Business and Tech

## Answers From Domain-Driven Design

Mathieu François - Jul 2020
https://digitalstoic.io/

---

# DDD: How to Bridge Business and Tech

## 1. Design in the Heart of Software Programming

## 2. DDD Key Concepts

- Strategic Patterns: Socio-technical Architecture
- Tactical Patterns: Clean Architecture Code

## 3. Application in the Projects

- Event Storming Workshops
- Core Domain and Context Mapping
- Business-Driven Development
- Events-based Architecture

---

<!-- _class: full-image-top -->
<style>
    h1#art-or-science {
        margin-top: -1.5em;
    }
</style>

<h1 id="art-or-science">Is Programming <em>Science</em> or Art?</h1>

![bg](art-or-science.jpeg)

---

<!-- _class: split -->

# Experts: Art Over Computer Science

<div class="ldiv">
    <img src="art-of-programming.jpg" class="ldiv" width="400px">
</div>
<div class="rdiv">

- Donald E. Knuth received the Turing Award in 1974 for best programming book ever written (ask Bill Gates)
- Read from Paul Graham (founder of Y Combinator): [Knuth: Computer Programming as an Art](http://www.paulgraham.com/knuth.html) and [Hackers and Painters](http://www.paulgraham.com/hackpaint.html)

</div>

---

# Programming: Manufacturing Or Craftsmanship?

<!-- _class: full-image-top -->

![bg](craftsmanship.jpg)

---

<!-- _class: split -->

# Expert Opinion Again: Crafstmanship

<div class="ldiv">
    <img src="mythical-man-month.jpg" class="ldiv" width="400px">
</div>
<div class="rdiv">
<div class="ldiv">

- [Fred Brooks](https://en.wikipedia.org/wiki/Fred_Brooks) led the development of the most complex software project in his time, the IBM OS/360. He received the Turing Award 1999 for his book

  - <q>Adding manpower to a late software project makes it later</q>

- Geek note: in 2004 he stated <q>The most important single decision I ever made was to change the IBM 360 series from a 6-bit byte to an 8-bit byte, thereby enabling the use of lowercase letters. Thate change propagated everywhere</q>

</div>

---

<!-- _class: full-image-bottom -->
<style>
    h1#no-code {
        margin-top: 6em;
    }
</style>

<h1 id="no-code">Why? Hint: Why AI does not programming yet?</h1>

![bg](no-code.png)

---

<!-- _class: split -->

# It's All About Design (Not Photoshop)

<div class="ldiv">
    <img src="design-everyday-things.jpg" class="ldiv" width="350px">
</div>
<div class="rdiv">

The best design book ever! Design Principles:

- Visibility
- Affordance
- **System Image**
- **Mental Models**
- (Natural) mapping
- Feedback

---

<!-- _class: split -->

# Design: Bridge Between Mental Models

<div class="ldiv">
    <img src="conceptual-models.png" class="ldiv" width="450px">
</div>
<div class="rdiv">

- The key ability of a human programmer is not to code but to bridge the mental model of the user and the system image. It requires _Empathy_, _Creativity_ and _Rationality_

</div>

---

# Practices That Enable Design In Programming

- Give opportunities for Developers to _Enter the Flow State_
  - Watch Mihaly Csikszentmihalyi [TED talk about the Flow](https://www.ted.com/talks/mihaly_csikszentmihalyi_flow_the_secret_to_happiness)
- Protect the Developers time slots
  - Read Paul Graham [Maker's Schedule, Manager's Schedule](http://www.paulgraham.com/makersschedule.html)

Fine, but how do you _practically_:

- Develop a shared understanding of the Domain between the Business and the Tech?
- Reflect _directly_ in the code without loss of knowledge?
- Evolve your mental models and architecture around them?

---

# Domain-Driven Design (AKA DDD)

![w:800px center](DDD-books.jpg)

- My personal definition: _Design Thinking applied to Software Architecture_

---

# When Use DDD?

## Quick History

- Created in 2003 but initial slow adoption, mostly in Enterprise software.
- Rise of distributed architecture and micro-services makes the methodoloy much more relevant
- Officially recommended in the [MS .Net micro-services architecture guide](https://docs.microsoft.com/en-us/dotnet/architecture/microservices/microservice-ddd-cqrs-patterns/)

## Use Cases

- Great for products (long-term evolution) with complex domains
- DDD enables _Evolutionary Architecture_ via iterative Design
- Overkill for applications with a simple domain

---

# Incremental vs Iterative Design

![center](patton-incrementing-mona-lisa.jpg)
![center](patton-iterating-mona-lisa.jpg)

- DDD works very well with Agile (actually makes it better)

---

# Reality is A Mix of Iterative/Design

![center](iterative-incremental-mona-lisa.png)

---

# 2. DDD Key Concepts

## Strategic Patterns - Business + Socio-Technical

- Bounded Context
- Ubiquitous Language
- Core Domain Chart
- Context Map

## Tactical Patterns - Code Level

- Onion Architecture
- CRUD vs CQRS
- Domain Events

---

# Strategic Business Challenge = Domain

![w:600px center](domains.png)

- Domains = Problem space
- Separate into Sub-Domains = Core vs non-Core

---

# Bounded Contexts

![w:650px center](bounded-context.png)

- Bounded Context = Logical boundary between Models (Solution space)
- Remember the _one database per micro-service_ best practice?

---

# Sounds Familiar?

![w:800px center](what-talking-about.png)

---

# Ubiquitous Language

![w:800px center](ubiquitous-language.png)

- Fancy name for _Domain Language_

---

# Ubiquitous Language is a Pillar of DDD

- SMEs are the source
- Key to build a shared understanding of the Domain between the many stakeholders
- Glossary is a must-maintain
- Never underestimate the power of the words: Any word ambiguity can reveal profound misunderstandings between the stakeholders
- Always stick to the UL, including in the code!

---

# Core Domain Charts

## How to prioritize the Sub-Domains

- Core Domain: Heart of the solution, strong differentaition
- Supporting domain: Vital for ops of Core Domain but not strategic
- Generic: Needed functionality but not critical and commotditized

## How to couple the Bounded Contexts

- Team assignment is the first draft of architecture
- Distributed teams: Scope of responsibility, size, types of relationships
- _Inverse Conway Manoeuver_: Make implicitly hidden organization process visible + identify flow of bad models + establish decentralized governance model

---

![w:1000px center](core-domain-chart-template.jpg)

---

<!-- _class: split -->

# Context Maps

<div class="ldiv">

- Visualize the sociotechical architecture
- Align the teams and systems with the Context Boundaries

</div>
<div class="rdiv">
    <img src="context-map.jpg" class="ldiv" width="650px">
</div>

---

# Context Map and Teams Patterns

![w:1100px center](context-map-patterns1.png)

---

![w:1150px center](context-map-patterns2.png)
![w:1150px center](context-map-patterns3.png)

---

# Tactical Patterns - Code Level

- How to structure the code so that the architecture and model can evolve seamlessly
- Sometimes the most confusing part of DDD for beginners: Entities, Value Objects, Root Aggregates, etc...
- Recent trend in testing: [Architecture resting](https://www.infoq.com/presentations/automation-testing-architecture/) (check components complexity and boundaries)
- We'll focus on the _high level_ Tactical Patterns

---

# Hexagonal / Onion Architecture Benefits

- Strong decoupling between the technology stacks/systems and the Business Logic of the Application (= Domain Model)
- Better maintainability and evolution of the architecture
- Isolation of the Domain Model:
  - Makes the Model more explicit: continutation of the shared understanding between the Business and Developers
  - Faster to test so more robust

---

# Let's Start

![w:800px center](archi1.png)

---

# Flow of Control

![w:800px center](archi2.png)

---

# Tools and Systems

![w:800px center](archi3.png)

---

# Decouple Application Input via Ports

![w:800px center](archi4.png)

---

# Decouple Application Output via Ports

![w:800px center](archi5.png)

---

# Inversion of Control (Dependency Injection)

![w:800px center](archi6.png)

---

# Application Layer

![w:800px center](archi7.png)

---

# Domain Layer

![w:800px center](archi8.png)

---

# CRUD vs CQRS

## Create / Read / Update / Delete

- Relational databases are an impressive mature technology but they have their pros/cons in terms of data modeling
- We have all been brainwashed by Create / Read / Update / Delete (CRUD)
- CRUD doesn't map with the Domain Actions:
  - Do you ever _Delete_ a financial record?
  - What does _Update_ an order mean? Review it? Add items? etc...
- Similar semantic limitations with the HTTP verbs used by REST
- Model and performance dilemma between Write (transactions) vs Read (joins)

---

# Command Query Responsibility Segregation

![w:800px center](cqrs.png)

---

# CQRS Benefits

- More overhead than CRUD but enables persistence of Domain
- Actions map with the Domain Ubiquitous Language
- Not limited to 1 database or data model anymore. Ex.: 1 DB for Ops and 1 DB for reporting
- Command/Query Bus decouples the Application with the other components
- Enables Event Sourcing (we'll see another time)

---

# Domain Events

![w:800px center](domain-events.png)

- DDD first class citizens = Output of Domain Command
- Enable Application messaging via Publish/Subscribe, etc
- Enable very fine-grained Application Behavioural Analytics without additional work

---

# 3 Application of DDD in the Projects

- Where to Start?
- Event Storming Workshops: From big picture to process modeling and software design
- Core Domain Patterns: Team organization and Business Models
- Context Mapping: Team and system relationships
- Business-Driven Development: Testable Business examples
- Events-Driven Architecture

---

# Where to Start?

![w:800px center](ddd-starter-modelling-process.jpg)

- From https://github.com/ddd-crew/ddd-starter-modelling-process

---

# Event Storming Workshops

- Rising usage in the DDD community. Not just the new hype of post-it workshop lovers
- Gather all the stakeholders (Sales, Finance, Ops, Dev, etc) to
  - Do hands-on modeling out loud
  - Create empathy and shared understanding
  - Find the boundaries between the Sub-Domains
  - Align on the strategic choices
- Why Events:
  - Tangible business fact that does not assume prior model or architecture
  - Directly reusable by DDD

---

# How Does Event Storming Look Like?

![w:1200px center](event-storming1.jpg)

- Infinite horizontal space liberates the people mental maps and collaboration

---

# From Business Narrative to Sub-Domains

![w:1100px center](event-storming2.jpg)

---

# Event Storming Artifacts

![w:800px center](event-storming3.jpg)

---

# Event Storming Workshop Purposes

![w:700px center](eventstorming-categories.png)

---

# Core Domain Patterns: Market Leader

![w:900px center](core-domain-pattern1.jpg)

---

# Not Defensible Advantage

![w:900px center](core-domain-pattern2.jpg)

---

# Digitize Manual Process

![w:900px center](core-domain-pattern3.jpg)

---

# Natural Lifecyle of Innovation

![w:900px center](core-domain-pattern4.jpg)

---

# Untapped Opportunity

![w:900px center](core-domain-pattern5.jpg)

---

# Validate to Innovate

![w:900px center](core-domain-pattern6.jpg)

---

# Weight of Legacy

![w:900px center](core-domain-pattern7.jpg)

---

# Context Mapping: Org Synergies / Friction

![w:680px center](context-map-example1.jpg)

---

# Context Mapping: Example 2

![w:675px center](context-map-example2.jpg)

---

# Business-Driven Development

![w:800px center](bdd-process.jpg)

- Not part of DDD but great complement of Ubiquitous Language and CQRS

---

# Events-Driven Architecture

![w:800px center](micro-services.jpg)

- Big topic for another time! But Domain Events enable natively sophisticated architecture patterns used by [Micro-Services](https://microservices.io/patterns/index.html), susch as [Event Sourcing](https://eventstore.com/blog/what-is-event-sourcing/)
