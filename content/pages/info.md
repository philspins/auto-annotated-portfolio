---
type: PageLayout
title: About
colors: colors-a
backgroundImage:
  type: BackgroundImage
  url: /images/image.jpg
  backgroundSize: cover
  backgroundPosition: center
  backgroundRepeat: no-repeat
  opacity: 75
sections:
  - elementId: ''
    type: HeroSection
    colors: colors-f
    backgroundSize: full
    text: >+
      # Hi. I’m a developer. I grew up in the 80's using a TI-99/4A and playing Nintendo NES. In the 90's I got a Pentium 2 and tried to learn Basic.
      
      
      I knew from a very young age that I wanted to be a programmer. Before going to college I had grandiose visions of becoming a game developer. In high school I took all the computer classes I could - learned Turing, Java, HTML. In the early 2000s I attended Fanshawe College and completed their three year Computer Programmer Analyst program. 
      <br /><br />
      After graduating I wasn't so picky about wanting to get into game dev specifically - I just wanted a job to sustain myself.  I ended up working as a technical support agent at Teletech for a few months, providing support for Verizon DSL customers. I learned a great deal about troubleshooting and custom support skills there. These would prove to be vital throughout my career and in hindsight I'm very glad to have worked there.
      <br /><br />
      While working at Teletech I interviewed tirelessly for software development jobs. Ultimately I ended up landing a job at the local defense contractor (General Dynamics Land Systems-Canada), working as a Systems Analyst in the Project Management Systems department. During my time at GDLS-C I created innovative software solutions to address the unique challenges they had, such as: <br />
      - Managing projects and calculating earned value <br />
      - Developing bids against government contracts <br />
      - Automating contract reviews and managing responses to common contract clauses <br />
      - Custom workflow tools <br />
      - Inventory management <br />
      - Headcount planning and time tracking <br />
      - Vehicle test kits <br />
      - Content and Knowledge Management systems <br />
      - Planning of efficient packaging for spare parts <br />
      - Integration with Oracle E-Business <br /> <br />
      I was able to develop a number of skills during my time there... ranging from analysis, development and testing to planning and managing projects of various sizes - some commanding multi-million dollar budgets. I had several lateral moves, and a couple of promotions during my time there, but I wasn't satisfied with the ability to further my technical skills - and I still hadn't obtained the title of "programmer" or "developer" which I so coveted. So, after about 11 years of service, I began to interview for new positions again.
      <br /><br />
      My hunt for a developer title landed me at GoodLife Fitness - on paper, an unlikely candidate, but they fit many of my criteria: <br />
      - they were a well established local company <br />
      - they had a dedicated department to software development <br />
      - they had an office with many amenities <br />
      - the business outlook was promising with seemingly no limitations (in a world with an obesity epidemic it seemed to me they had a license to print money) <br />
      - a lively culture and a team filled with individuals who I really enjoyed interviewing with <br />
      I had a great time working at GoodLife, my first year there was a wirlwhind of learning new technologies (such as building in "the cloud"), making new friends who I still have to this day, and testing the limits of my abilities. We built APIs in C# which were hosted in Azure, built data pipelines using SSIS, and managed a complex data store which supported the commissions and compensation program for their sales team. After the first year some of the culture flaws begaun coming to light and many of the team members whom I enjoyed working with decided to move on. I had taken on a team lead position, which took me away from my passion of writing code, and began to feel dis-satisfied. I had taken a bit of a pay cut coming to GoodLife, with the hope that it would provide greater long-term happiness, and that happiness was proving to be short lived. One of my new developer friends recruited me to the next company - Carfax.
      <br /><br />
      London had a local company which competed with Carfax, and in 2018 or 2019, it was acquired by Carfax and branded Carfax Canada. The previous company had a team of developers who worked on the Canada product, and when Carfax saw the pool of talent that was available in London it began hiring a new team of developers to support its US operations. This was the team that I joined. I led a team called SEO Tools who primarily managed a tool that enabled SEO analysts optimize organic search traffic for the public Carfax website. It accomplished this by crawling the Carfax website, scraping relevant div tags, and providing the analysts with a web interface that scored the layout based on a set of rules that they developed. The backend was written in Go, which was my first experience using that language, and I quickly fell in love with it. We also managed the infrastructure for the Carfax blog and other static content pages. I learned a lot about using Terraform to manage AWS resources during this time. I was also a key player in growing the team, interviewing countless candidates and helping to grow the size of the Carfax US team from 30 to 200 employees. Towards the end of my tenure I also led the backend effort to build the infrastructure and API for a new product called the Business Directory - a section of the public website where users can search for dealers or service shops that partner with Carfax and read verified reviews ("Yelp for the car industry").
      <br /><br />
      After a couple of years at Carfax I started to see the same management patterns that I saw at GDLS-C and GoodLife which led to me leaving them. I yearned to work someplace where I was surrounded by excellence. When the COVID-19 pandemic hit and everybody went remote, it opened up new possibilities for me. I had never been interested in moving to another city for work, but I had always wanted to work for a prestigious company such as Google. So I applied to Google, and was granted an interview. I didn't get an offer from them, but it gave me the itch to work on my skills and try again 12 months later. When my 12 month waiting period was up and I was eligible to apply again, I decided to cast a wider net to other big companies who had openings for remote positions - such as Amazon, Meta and Uber. I was recruited by EA, interviewed with them, and ended up declining an offer which felt like a lowball. A former collegue showed me some posting from Sailpoint - a company I had never heard of - so I started investigating them. It seemed like a good fit that checked off many of my boxes. So I applied, interviewed, and was offered a position that I accepted. I am still there today, working on a team developing core backend services supporting their flagline SaaS product Identity Security Cloud.
      <br /><br />
    media:
      type: ImageBlock
      url: /images/phil_eiffel_tower.jpg
      altText: Me at the Eiffel Tower
    styles:
      self:
        height: auto
        width: wide
        margin:
          - mt-0
          - mb-0
          - ml-0
          - mr-0
        padding:
          - pt-16
          - pb-12
          - pl-4
          - pr-4
        textAlign: left
  - type: MediaGallerySection
    colors: colors-f
    subtitle: 'I worked with these great companies:'
    images:
      - type: ImageBlock
        url: /images/SailPoint-logo.svg
        altText: Sailpoint logo
        caption: Sailpoint logo
      - type: ImageBlock
        url: /images/CARFAX_Logo.svg
        altText: Carfax logo
        caption: Carfax logo
      - type: ImageBlock
        url: /images/GoodLife_Fitness_logo.svg
        altText: GoodLife logo
        caption: GoodLife logo
      - type: ImageBlock
        url: /images/GDLS-logo.png
        altText: GDLS-C logo
        caption: GDLS-C logo
    spacing: 3
    columns: 4
    aspectRatio: auto
    showCaption: false
    enableHover: false
    styles:
      self:
        width: wide
        height: auto
        padding:
          - pt-8
          - pb-8
          - pl-4
          - pr-4
        textAlign: left
  - type: DividerSection
    styles:
      self:
        width: wide
        padding:
          - pt-8
          - pb-8
          - pl-4
          - pr-4
        borderWidth: 1
        borderStyle: solid
  - type: FeaturedItemsSection
    subtitle: 'You can find me here:'
    colors: colors-f
    items:
      - type: FeaturedItem
        actions:
          - type: Link
            label: GitHub
            url: 'https://github.com/philspins'
        styles:
          self:
            textAlign: left
      - type: FeaturedItem
        actions:
          - type: Link
            label: Twitter
            url: 'https://x.com/philviral'
        styles:
          self:
            textAlign: left
      - type: FeaturedItem
        actions:
          - type: Link
            label: LinkedIn
            url: 'https://www.linkedin.com/in/philipjohnbasil/'
        styles:
          self:
            textAlign: left
      - type: FeaturedItem
        actions:
          - type: Link
            label: Discord
            url: 'https://discord.gg/UB2JSdYQ'
        styles:
          self:
            textAlign: left
      - type: FeaturedItem
        actions:
          - type: Link
            label: Instagram
            url: 'https://www.instagram.com/accordianthief'
        styles:
          self:
            textAlign: left
    columns: 3
    spacingX: 120
    spacingY: 16
    styles:
      self:
        height: auto
        width: wide
        padding:
          - pt-8
          - pb-8
          - pl-4
          - pr-4
  - type: DividerSection
    styles:
      self:
        width: wide
        padding:
          - pt-12
          - pb-12
          - pl-4
          - pr-4
        borderWidth: 1
        borderStyle: solid
  - type: LabelsSection
    colors: colors-f
    subtitle: 'Skills:'
    items:
      - type: Label
        label: Architecting distributed systems using cloud technologies 
      - type: Label
        label: Implementing CI/CD using Jenkins, GitLab and cloud solutions
      - type: Label
        label: Data modelling for SQL and NoSQL databases
      - type: Label
        label: RESTful and GraphQL API design
      - type: Label
        label: Test Driven Development (TDD)
      - type: Label
        label: Object Oriented Design
      - type: Label
        label: Design Patterns
      - type: Label
        label: AWS
      - type: Label
        label: C++
      - type: Label
        label: Go
      - type: Label
        label: Java
      - type: Label
        label: C#
      - type: Label
        label: Javascrpt
      - type: Label
        label: Python
      - type: Label
        label: Node.js
      - type: Label
        label: React
      - type: Label
        label: SQL
      - type: Label
        label: Go
      - type: Label
        label: Kubernetes
      - type: Label
        label: ArgoCD
      - type: Label
        label: Terraform
  - type: DividerSection
    styles:
      self:
        width: wide
        padding:
          - pt-12
          - pb-12
          - pl-4
          - pr-4
        borderWidth: 1
        borderStyle: solid
  - type: TextSection
    variant: variant-a
    subtitle: 'Contact:'
    colors: colors-f
    text: |
      [philly.craig@gmail.com](mailto:philly.craig@gmail.com)
  - type: DividerSection
    styles:
      self:
        width: wide
        padding:
          - pt-8
          - pb-8
          - pl-4
          - pr-4
        borderWidth: 1
        borderStyle: solid
  - type: FeaturedItemsSection
    colors: colors-f
    items:
      - type: FeaturedItem
        subtitle: 'Experience:'
        text: |-
          **Current**

          * Staff Software Engineer @ SailPoint

          **2019-2022**

          * Software Engineer @ Carfax

          **2017-2019**

          * Senior Software Developer @ GoodLife Fitness

          **2006-2017**

          * Software Developer / Systems Analyst @ GDLS-C

          **2005-2006**

          * Tech Support @ Teletech (Verizon)
        styles:
          self:
            textAlign: left
      - type: FeaturedItem
        subtitle: 'Education:'
        text: |-
          **2002-2005**

          * Computer Programer Analyst at Fanshawe College

          **2002**

          * North Middlesex District High School
        styles:
          self:
            textAlign: left
    columns: 2
    spacingX: 60
    spacingY: 60
    styles:
      self:
        height: auto
        width: wide
        padding:
          - pt-8
          - pb-8
          - pl-4
          - pr-4
        textAlign: left
  - type: DividerSection
    styles:
      self:
        width: wide
        padding:
          - pt-12
          - pb-12
          - pl-4
          - pr-4
        borderWidth: 1
        borderStyle: solid
  - type: ContactSection
    backgroundSize: full
    title: "Let’s talk... \U0001F4AC"
    colors: colors-f
    form:
      type: FormBlock
      elementId: sign-up-form
      fields:
        - name: firstName
          label: First Name
          hideLabel: true
          placeholder: First Name
          isRequired: true
          width: 1/2
          type: TextFormControl
        - name: lastName
          label: Last Name
          hideLabel: true
          placeholder: Last Name
          isRequired: false
          width: 1/2
          type: TextFormControl
        - name: email
          label: Email
          hideLabel: true
          placeholder: Email
          isRequired: true
          width: full
          type: EmailFormControl
        - name: message
          label: Message
          hideLabel: true
          placeholder: Tell me about your project
          isRequired: true
          width: full
          type: TextareaFormControl
      submitLabel: "Submit \U0001F680"
      styles:
        self:
          textAlign: center
    styles:
      self:
        height: auto
        width: narrow
        margin:
          - mt-0
          - mb-0
          - ml-4
          - mr-4
        padding:
          - pt-12
          - pb-12
          - pr-4
          - pl-4
        flexDirection: row
        textAlign: left
---
