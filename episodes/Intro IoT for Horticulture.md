---
title: 'Intro IoT for Horticulture'
teaching: 15
exercises: 0  
---

:::::::::::::::::::::::::::::::::::::: questions <!-- New box with typeID (questions, objectives, callout...) -->

Can open-source technology and IoT bring precision agriculture to smallholder farmers?
How does an electronic sensor turn the environment into data?
What does a complete IoT monitoring system look like?
Why does owning the technology and the data matter?

:::::::::::::::::::::::::::::::::::::::::::::::: <!- - To close the box - ->


::::::::::::::::::::::::::::::::::::: objectives <!-- '##' = section heading (shows in the page's table of contents). '###' = sub-section. -->

Explain how crop-specific environmental needs lead to science-based advice
Describe how a sensor converts an environmental parameter into a measurable signal
Outline the parts of an IoT system, from sensor to alert
Discuss why open source and data ownership matter for smallholders

::::::::::::::::::::::::::::::::::::::::::::::::

The guiding question

This course keeps coming back to one question:

> Will open-source technology and IoT popularize precision agriculture among smallholder farmers? <!-- '>' renders as a highlighted quote -->

To answer it, we need to understand how the technology works, so that we can adapt it to the challenges and projects we work on in agrifood systems (AFS) and horticulture. That is why we start by stepping back to the basics: understanding the building blocks is what allows us to make a leap later.

From plant needs to science-based advice

Plants respond to their environment, and different crops have different environmental needs. Take a single parameter, temperature:

Crop	At 25 °C
Broccoli	In its "dead zone": poor growth
Maize	Good growing conditions

Matching what a crop needs with the conditions actually measured is, in a nutshell, how science-based advice works.

From theory to practice: electronic sensors

How do we know the real conditions in a specific field or greenhouse? An electronic sensor focuses on one parameter and makes something intangible (temperature, humidity, pH) measurable by converting it into an electrical signal.

The principle is simple. A microcontroller sends a known voltage through a circuit that includes the sensor. When the parameter changes, the sensor changes that voltage, for example from 4 V to 3.8 V. The microcontroller measures the difference and, using the sensor's known response (its calibration), converts it into a value such as °C or % humidity.

::::::::::::::::::::::::::::::::: callout

Isolating the violin

The environment is complex: many things happen at the same time. A sensor lets us isolate one parameter from that complexity, like listening to an orchestra and choosing to hear only the violin.

:::::::::::::::::::::::::::::::::::::::::

The same principle applies far beyond horticulture: aquaculture, livestock and poultry farming, and even home automation (domotics).

What sensors can tell us
One parameter, one agronomic meaning

Humidity influences water uptake, transpiration and the development of pathogens. These in turn affect how much a crop produces, and therefore how much the farmer earns.

Several parameters combined

By combining light intensity, temperature and humidity, and comparing them with the known conditions that favour pests and diseases (for example fungal diseases), a system can trigger an alert when the risk is high.

The fourth factor: time

A single reading tells us what is happening now. But what about yesterday? Fungal diseases often become visible only after the crop is already infected. If something had been measuring constantly, we could have had an early warning. This is why we automate the recording of parameters.

From sensor to alert: how an IoT system works

A simplified IoT monitoring system{alt='Flow diagram with five boxes: sensors in the field, a microcontroller that records values, an internet connection, an online database with processing and alert rules, and a web or phone app used by the farmer or advisor.'}

Sensors measure the parameters in the field or greenhouse.
A microcontroller reads and records the values automatically.
The device connects to the internet and saves the data online.
An online program processes the data and triggers alerts. Historical data can be reviewed, and combined with forecasting models.
An app gives the user access to the data from anywhere: the farmer, but also an extension officer working remotely.

::::::::::::::::::::::::::::::::: callout

Not a replacement for the field

Farmers still need to walk their fields. IoT adds a layer of information that supports data-driven decision-making, for example by letting you go back and see what happened in the days before a problem appeared.

:::::::::::::::::::::::::::::::::::::::::

Where we are going

The system above is a finished product. In the next sessions we will build up to it step by step, through theory and practical exercises: how to code, how to wire, and the basics of electronics.

Two principles guide the way:

Always focus on the final result. There are many ways to solve a problem in code; what matters is that the solution works.
From hobby to field. A prototype that works on a desk is not enough. Our goal is a device that survives the field environment: heat, cold and daily swings in humidity.
Why open source?
Owning the data we produce, instead of only being able to consult it through a provider's service.
Decentralized production: local small businesses can develop, install and support these devices close to the farmers who use them.

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: instructor

Figures quoted in the session: a commercial monitoring box costs around €800–1,000, or about €50 with a subscription in which the farmer does not own the data. A self-built open-source device costs less than $200 in parts (excluding labour, installation and maintenance).

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: challenge

Challenge: your first sensor

Think of a crop or production system you work with.

Which single parameter would you measure first?
What decision would that measurement support?
What would a useful alert say, and who should receive it?

:::::::::::::::::::::::: solution

Example answer

Greenhouse tomatoes: measure air humidity at canopy level. Long periods of high humidity favour fungal diseases. An alert such as "Humidity above the risk threshold for the last 6 hours: ventilate and inspect" would go to the farmer and the extension officer.

:::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::: keypoints

Different crops need different conditions; matching needs with measurements is the basis of science-based advice.
A sensor isolates one parameter and converts it into an electrical signal a microcontroller can measure.
Combining parameters over time enables early-warning alerts.
An IoT system links sensors, a microcontroller, online storage and processing, and a user app.
Open source lets farmers and local businesses own the technology and the data.

::::::::::::::::::::::::::::::::::::::::::::::::
