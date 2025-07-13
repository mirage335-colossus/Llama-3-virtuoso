────────────────────────────────────────────────────────────────────────

ConsumerEconomy License
Version 1.00 – July 2025
(“CEL-1.00”)

────────────────────────────────────────────────────────────────────────

PREAMBLE  

Except as expressly allowed by the personal-use carve-out in § 2(a)(ii), any act
of loading, storing, or executing the Work on hardware that fails the
Consumer-Hardware Instance (“CHI”) criteria in Appendix A is
**outside the scope** of every copyright and patent license granted herein; the
copy created in RAM, cache, or persistent storage on such Non‑CHI hardware
therefore constitutes an **unlicensed copy** under 17 U.S.C. § 106(1) and
equivalent international provisions. This License is both
**(a) a binding contract** **and** **(b) a copyright and patent license**
under 17 U.S.C. § 106 and analogous laws worldwide, and all hardware- and
service-use limits set forth herein—including those in Appendix A and Section 6—
are **intended** as express conditions of the § 106 grant,
**to the maximum extent permitted by law,** **and** independent, material
**contractual covenants**, enforceable even if a court were to hold them
outside the scope of exclusive rights. **Breach of any such restriction**
(i) immediately creates infringement liability, (ii) automatically terminates
all licenses granted herein, and (iii) constitutes a material breach of contract
**entitling the Author to pursue all remedies available under copyright law and
contract law**, including injunctive, specific‑performance, or other equitable
relief. **The parties *expressly stipulate* that any breach of the Hardware
Covenants presumptively causes irreparable harm; equitable relief may
therefore issue without proof of monetary damage or posting of bond.**  

The parties acknowledge that compliance with the CHI criteria is a fundamental
premise of the Author’s consent to any act governed by 17 U.S.C. § 106 or
EU Directive 2009/24/EC.  

The purpose of the ConsumerEconomy License is to keep advanced computational
tools in the hands of ordinary people. It therefore (i) forbids inference on any
hardware that fails the Consumer‑Hardware Instance (“CHI”) criteria in
Appendix A—regardless of where that hardware is physically located—**except for
the limited personal‑use carve‑out in § 2(a)(ii)**—while still permitting CHI
hardware to reside in a data‑centre or other managed environment, (ii) requires
every downstream copy to preserve these same rules verbatim, (iii) lets Authors
incorporate material carrying mandatory Creative‑Commons or similar terms, and
(iv) lets the original Author issue later CEL versions if (and only if) needed
for continued compatibility with equally or more protective licenses. This
license is intentionally more restrictive than any Free/Libre/Open‑Source
definition; do **not** assume GPL‑compatibility.  

**Recital P-4 (Transparency & Privacy).**  Publication of device serial numbers
is a transparency safeguard aimed at preventing hardware hoarding. Because
serials ordinarily do **not** identify natural persons, they are *not* personal
data in most contexts; if, and only if, a mandatory privacy statute says
otherwise, the audited-hash fallback in Appendix C-1 applies.  

**CEL is not an open‑source license.**  

ACCEPTANCE.  You form a binding contract under this License when you  
(a) click an “I Agree” (or equivalent) button **or**  
(b) **download, install, compile, execute, or otherwise use** any part of the Work
*after* (i) having been shown, immediately adjacent to the download or run action
**or, for physical media, on the external packaging**, a clear hyperlink or
scroll box containing **both** (A) this License **and** (B) the Summary, and
(ii) having had a reasonable opportunity to review it. Distributors must present
such link or scroll box; click‑wrap is required whenever technically and
commercially practicable.  


Due to the literal 'agency' of AI software run on long work, schedule, etc, such
software and/or software including such software, is most robust when hosted by
the inherent resilience, resourcefulness, and diverse security practices, of
individuals. The reliability of Amateur Radio largely without so much as strong
authentication is a very long track record testament to that.  

Unfortunately, because larger AI models, such as AI Large Language Models
(AI LLMs), need for practical use, quantities of relatively inexpensive VRAM,
etc, hardware, just slightly, not orders of magnitude nor otherwise
prohibitively technically difficult, above availability on much consumer priced
computing hardware (ie. 48GB,80GB,160GB,512GB instead of 24GB), and such larger
AI models also only pass small amounts of text between very complex software,
neither hardware nor software availability may be protected by traditional
'redistribute source code' obligations. The hope here is to encourage
compatibility with consumer hardware, or at least not expand the relative market
for non-consumer hardware, while publishing sufficient comprehensive software
technology for practical uses with at least entry-level efficiency, to promote
the fundamental right for new entrants to willingly join the productive economy,
etc.  

The spirit of this license is in the short term to encourage the use and
availability of the consumer economy for computing, etc, which makes all of
that resilient, resourceful, diverse, robustness, possible. Longer term, the
spirit of this license is the benefits of equal Universal Basic Income, and
post-scarcity, etc.  


These limitations are technology-safety measures, not
supplier-exclusive restraints, and they apply equally to all market
participants.  The principal objective is to ensure that any individual can run
the Work on ordinary consumer hardware.  Small, low-MAU services are tolerated
only to the extent expressly allowed below.  

**Filename Equivalence.** Wherever this License (including its Appendices)
refers to a file named LICENSE-CEL-1.00.md or SUMMARY-CEL-1.00.md, the
requirement is equally satisfied by the corresponding file with a .txt
extension—i.e.: LICENSE-CEL-1.00.txt or SUMMARY-CEL-1.00.txt—provided the
content matches its Markdown counterpart save only for variation in
line-ending style (LF vs CRLF).

**Recital T (No Admission).**  Nothing in this License shall be interpreted as
an acknowledgement that machine-learning training invariably creates a
derivative work under copyright.  The contractual status of a
Training-Only Output under § 5.2-ter is stipulated **without prejudice** to any
party’s legal theory about transformative use.  

────────────────────────────────────────────────────────────────────────

1.  DEFINITIONS

────────────────────────────────────────────────────────────────────────

- **1​.​1 “Work”**  
    The software, model, dataset, or other copyrightable material distributed
    under CEL-1.00.  

- **1​.​2 “Author”**  
    The natural person(s) who first placed the Work under CEL-1.00 or any
    later CEL version. Where “Author”, “Licensor”, and “Contributor” appear
    together, “Author” controls.  

- **1​.​3 “Contributor”**  
    Any party that submits a copyrightable Contribution accepted into the
    Work.  

- **1​.​4 “You” or “Your”**  
    The individual or legal entity exercising rights under this License.  

- **1​.​5 “Consumer-Hardware Instance” (“CHI”)**  
    A single physical or virtual computer that simultaneously meets
    **all** requirements in Appendix A.  

- **1​.​6 “Service”**  
    Making the Work available for interactive use by anyone other than
    You, including SaaS, API, batch, or agentic operation.  

- **1​.​7 "Monthly Active Users" ("MAU")**  
    The number of unique natural persons who interact—via any interface,
    including web, mobile, text, voice, or API—with the Service in any
    rolling 30-day window, counted by any reasonable industry-standard
    method.  

- **1​.​8 “Protected Terms”**  
    Sections 1–21 inclusive, all Appendices, and § 7.4 (Entire Agreement).
    No other text may be designated “Protected Terms” except in a
    duly published later CEL version that You separately accept
    under § 10.  

- **1​.​9 “Upstream-License-Required Terms” (“ULRT”)**  
    Attribution, notice-preservation, share-alike, non-commercial, or
    similar obligations that a third-party license imposes on material
    You add to the Work and that cannot legally be waived.  

- **1​.​10 “Very-Large Actor” (“VLA”)**  
    Any Legal Entity (plus Affiliates) that controls digital services
    reaching **more than six-hundred-seventy-five million
    (675 000 000)** Monthly Active Users as measured by any reasonable
    industry-standard method.  

- **1​.​11 “Zero-Retention Mode” (“ZRM”)**  
    A processing configuration in which (i) user-supplied or user-generated
    content is retained only in volatile memory for the minimum time
    technically necessary to produce and transmit a response, and
    (ii) such content is categorically excluded from all training,
    fine-tuning, evaluation, logging, or analytics other than aggregate,
    irreversible token counts.  

- **1​.​12 “Licensor”**  
    The Author or any Contributor that distributes the Work under CEL-1.00.  

- **1​.​13 “Affiliate”**  
    With respect to a party, any entity that directly or indirectly Controls,
    is Controlled by, or is under common Control with that party, where
    “Control” means ownership of more than fifty per-cent (50 %) of the
    voting securities or beneficial ownership of such entity.  

- **1​.​14 “Legal Entity”**  
    An organisation recognised by law as having separate legal personality,
    including corporations, partnerships, non-profits, and government
    agencies.  

- **1​.​15 “Deployment-Template” (“DT”)**  
    Any virtual-machine image, container, snapshot, scripted installer,
    Orchestration manifest (e.g., Kubernetes Helm chart), or similar artefact
    that, once started by a third party, causes the Work to execute with no
    more than trivial configuration (e.g., setting an API key, model path,
    or GPU count).  

- **1​.​16 “OpenRouter”**  
    A public router-style API front-end that allows access to multiple
    third-party language-model back-ends on a pay-per-token basis,
    currently available at openrouter.ai. The term is used solely for
    the CI/CD safe-harbour in § 5.7.  

- **1​.​17 “Grandfathered CHI”**  
    A specific physical or virtual machine that met **all** Appendix-A tests
    **and** was already placed into bona-fide production use by You _before_
    any later marketing or list-price change that would otherwise disqualify it.
    Grandfathering is:  

    - (a) device-specific (serial-number or VM image hash);  
    - (b) non-transferable except as part of the same Service; and  
    - (c) revoked once the device is permanently taken out of service or
      upgraded with a non-qualifying accelerator.  

- **1​.​18 “Token-Traffic”**  
    The aggregate number of input tokens supplied to, plus output tokens generated
    by, the Work (or by any external model acting on its behalf) during a stated
    time window, **after applying the Retry-Batch consolidation
    in § 1.18-sexies**.  

- **1​.​18-bis “Training-Only Output” (“TOO”)**  
    Means a machine-learning model produced solely through activities permitted
    by § 2(a) (training, fine-tuning, evaluation, benchmarking) that:  

    - (i) contains **no** verbatim CEL parameter values, code, prompts, templates,
      or other expressive content; and  
    - (ii) incorporates at most a *de minimis* statistical imprint of the Work
      insufficient to permit reconstruction of any such expressive content.  

- **1​.​18-ter “Aggregate Distribution” (“Aggregate”)**  
    Means the placement or conveyance of one or more CEL-governed files together
    with one or more independent works on the same storage medium, archive,
    repository, container image, or similar package **provided that** each work
    remains separable, carries its own license notice, and no CEL-governed content
    is compiled, linked, merged, embedded, or otherwise integrated into the
    independent work. Mere co-location **without** technical integration is
    Aggregate Distribution.  

- **1​.​18-quater “Combined Work”**  
    Means any work in which CEL-governed content and another work are compiled,
    linked, fused, embedded, or otherwise integrated so that they load, execute,
    or are distributed together as a single model checkpoint, executable, prompt
    package, or other indivisible deliverable.  
    A Combined Work is **not** an Aggregate Distribution.  

- **1​.​18-quinquies Indicative Statistical-Imprint Benchmark**  
    *For evidentiary purposes only.*  
    Without prejudice to **Recital T** or to any Party’s substantive position on
    “transformative use”, the Parties acknowledge that a reproducible audit showing
    **not more than 0.03 percent (0.03 %) of contiguous, overlapping spans of fifty (50)
    or more tokens** common to both  

    - (i) outputs of a Model trained on the Work and  
    - (ii) the copyright-protected Training Material  

    *may* constitute probative evidence that such use is transformative.  
    Failure either to satisfy, or to test against, this numerical guideline **shall not**
    be taken as evidence of non-transformative use, nor shall compliance create any
    legal presumption, shift any burden of proof, or waive any right, defence, or
    remedy available under this License or applicable law.  

- **1​.​18-sexies “Retry Batch” (“RB”)**  
    - **(a) Definition.**  
    A *Retry Batch* is no more than **ten (10)** consecutive invocations, within
    a single **60-second** window, of the **same *Model Snapshot***—meaning the
    same provider-published model identifier (including identical major, minor,
    and patch numbers) **or** a publicly documented **Compatible Alias**—an alias
    that the provider represents will not introduce *breaking behavioural
    changes* during the 60-second window—with **identical input tokens**.
    Differences limited to random-seed or sampling parameters do *not* violate
    the identity requirement.  

    - **(b) Purpose limit.**  
    All invocations in a Retry Batch must be made solely to sample
    nondeterministic variance in the model’s decoding process (e.g., random seed,
    temperature, nucleus sampling, *best_of*).  

    - **(c) Traffic accounting.**  
    For *Token-Traffic* purposes, count only the largest single invocation in the
    Retry Batch.  

    - **(d) New batch trigger.**  
    Any invocation that falls outside the 60-second window **or** that changes
    the semantic content of the input tokens starts a new Retry Batch. Trivial
    whitespace or encoding normalisation is ignored.  

    - **(e) Exclusions.**  
    The consolidation in subsection (c) is **unavailable** if:  
      - (i) a call changes the semantic content of the input; **or**  
      - (ii) outputs other than the consolidated one are disclosed to end users
             or relied on in production. Retaining extra outputs exclusively
             for automated evaluation, debugging, or safety review is permitted.  

    - **(f) Anti-evasion.**  
    Artificially fragmenting inputs, chaining Retry Batches, or any other attempt
    to circumvent this section is a **material breach** governed by § 7.2
    *(Anti-Evasion)*.  

- **1​.​19 “Hardware Covenants”**  
    means the hardware‑ and service‑use restrictions set forth in Appendix A and
    Section 6. These restrictions are designated both as *express conditions* of
    the copyright and patent licenses granted herein **and** as *independent,
    material contractual covenants* enforceable under applicable law.  
 
- **1​.​20 “Ombudsperson”**  
    With respect to any Service that is required under § 6.4 to appoint one,
    an independent natural person  
    - (i) mutually agreed by the Author and the Service operator or, failing
        agreement within thirty (30) days, selected by the Presiding Officer of
        the Court of Arbitration for Art and Technology in The Hague;  
    - (ii) unaffiliated with either party; and  
    - (iii) charged with  
        - receiving and triaging user complaints,  
        - chairing Appendix D arbitration panels, and  
        - designating independent hardware-compliance auditors under  
            Appendix D-5.  

- **1​.​21 “Operational Prompt”**  
    Any system, agentic, chain-of-thought, or other provider-authored instruction
    that the Service operator supplies **for the purpose of providing the Service
    to Users other than the authoring natural person**.  

- **1​.​22 “Personal Prompt”**  
    Any prompt or input authored by a natural person **for that person’s own
    interaction** with the Service, *including* where the authoring person also
    happens to be the Service operator or administrator. A Personal Prompt is
    therefore “user-supplied content” for § 6.7 purposes.  

- **1​.​23 “Prompt-Integrity”**  
    The property that an end-user’s prompt reaches the model
    **unaltered by unauthorised parties**. Encrypting, concealing, or otherwise
    obfuscating prompts or model instructions is **not** Prompt-Integrity
    protection; it is secrecy.  

- **1​.​24 “Personal Data”**  
    Information relating to an identified or identifiable natural person,
    including the Service operator themselves. (Cf. GDPR Art. 4 (1).)  

- **1​.​25 “Access-Control Prompt”**  
    A discrete sequence of tokens whose principal function is to decide
    **whether, when, or to what extent** a User (including the Service operator)
    may obtain particular data, credentials, or functionality under this Service.
    Examples include rate-limit keys, role-based gating logic, and per-user
    credential selectors. Disclosure of an Access-Control Prompt would
    materially weaken the protection it provides.  

- **1​.​26 “Prompt-Defence Component”**  
    Any prompt, rule-template, fine-tuned or auxiliary model, script, or other
    instruction whose principal purpose is to **detect, prevent, rate-limit, log,
    or otherwise mitigate prompt-injection, jailbreak, credential exfiltration,
    or similar security threats**.  
    A Prompt-Defence Component **must be stored or generated separately**
    from *Operational Prompts* and **must not be used to produce substantive
    content** for Users, except ancillary security notices.  

    *Access-Control Prompts* (§ 1.25) and detector strings are subclasses of
    Prompt-Defence Component.  

- **1​.​27 “Untrusted External Content”**  
    Any text, code, or data that enters the Service automatically from a source
    **not controlled by the Service operator or the submitting User**, including
    but not limited to RSS/Atom feeds, webhook payloads, third-party APIs,
    cron-job downloads, or chat messages from integrated platforms (e.g.,
    Discord, Slack). Because its provenance is uncertain, it may embed
    malicious or prompt-injection strings.  

- **1​.​28 “Non-Inference External Service” (“NIES”)**
    A third-party API, webhook, email gateway, government portal, or other
    remote endpoint whose principal function is **not** to perform
    inference, training, fine-tuning, or evaluation of a language model,
    but rather to carry out a transactional, administrative, communicative,
    or *records-retrieval* task—including **AI-curated search, summarisation,
    ranking, or classification of public or governmental records**—(e.g.,
    submitting documents, processing payments, booking travel, searching
    public archives).
    The mere fact that the provider internally uses opaque or proprietary AI
    to fulfil that task **does not** disqualify it as an NIES, provided the
    Service operator supplies **no** CEL-governed weights and no prompts
    beyond the minimal text tokens needed to complete the task.  

- **1​.​29 “Incidental External Information” (“IEI”)**
    Any audio, text, image, telemetry, or other data that the Service
    operator **passively or incidentally** receives from external sources,
    including machine-generated or AI-generated content, that was **not**
    expressly solicited or routed for the purpose of performing
    language-model inference on behalf of the Service operator.  

- **1​.​30 “Residual Incidental Data” (“RID”)**
    De-minimis fragments of IEI that (i) were inadvertently stored,
    embedded, or re-emitted by the Service in the ordinary course of
    operation, (ii) are not relied upon as a primary source of inference or
    evaluation, and (iii) whose continued presence does **not** evidence
    systematic outsourcing of inference to non-consumer hardware.  

- **1​.​31 “License-Summary File” (“Summary”)**  
    A single-page, human-readable overview of CEL-1.00, published by the Author
    at  
    [https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md) .  
    The Author may update the URL by public notice, provided the content remains
    substantively identical.  
    A copy of that file named `SUMMARY-CEL-1.00.md` (or `.txt`) included
    verbatim in a distribution is an authoritative Summary.  

────────────────────────────────────────────────────────────────────────

2.  COPYRIGHT & PATENT GRANTS

────────────────────────────────────────────────────────────────────────

Subject to the terms and conditions of this License—including the Hardware
Covenants in Appendix A and the Service Covenants in Section 6—the Author hereby
grants You a worldwide, royalty-free, non-exclusive, irrevocable (except as
provided herein) license to exercise all rights the Author may have in the Work
under copyright and patent law.  **These permissions are granted both as
statutory licenses *and* as contractual rights, and every Hardware Covenant and
Service Covenant is enforceable on either or both theories, even if a court
were to hold that any such covenant lies outside the scope of exclusive rights
in 17 U.S.C. § 106 or its international counterparts.**  

*Patent rights granted here are subject to the detailed terms, including the
defensive-termination provision, set forth in Section 3 (Patent Grant).*  

- **(a)**  
    use the Work for **inference**:  

    - **(i)** on Consumer-Hardware Instances
        (nothing in this License limits any “essential-step” defence—including
        17 U.S.C. § 117(a) (United States), Article 5(1) of Directive 2009/24/EC
        (EU), s 47B of the Australian Copyright Act 1968, s 30.6 of the Canadian
        Copyright Act, or analogous rules—when the Work is run on CHI hardware);
        **or**  

    - **(ii)** on any other hardware or through any third-party inference
        service, **provided that**  
        - You are the **only human user** of that inference session;  
        - the Token-Traffic under this sub-clause does not exceed
          **five million (5 000 000)** tokens in any rolling 24-hour period; and  
        - no interactive, on-demand access is offered to anyone else, i.e., the
          activity is **not** a “Service” under § 1.6.  

    and use the Work for **training, fine-tuning, evaluation, or benchmarking**
    on any hardware that is **not** concurrently delivering interactive
    inference to external users, for any lawful personal, academic, **or
    preparatory-commercial** purpose—including producing model outputs or other
    artifacts that You may later release under open weights or deploy
    commercially;  

- **(b)**  
    modify and create derivative works.  For clarity, a **Training-Only Output**
    is *not* a “Derivative Work” for purposes of the downstream redistribution
    duties in Section 5, **unless** it embeds CEL-governed content beyond the
    threshold in § 1.18-bis(ii);  

- **(c)**  
    copy and redistribute the Work or derivatives, provided Section 5 is
    satisfied;  

- **(d)**  
    provide the Work as a Service **only** under Section 6; and  

- **(e)**  
    use the Work *solely* for temporary benchmarking or automatic
    system-administration of another computer (e.g., as a “Codex”-like helper on
    a RunPod instance to bring up fine-tuning software), provided every other
    CEL term is still met;  

- **(f) Hardware & Service Limits – Condition Precedent and Covenant.**  

    **Scope-Integrated Grant.**  For the avoidance of doubt, each permission in
    §§ 2(a)–(e) extends **only** to *“Authorised Copies”*—defined as
    reproductions of the Work **fixed exclusively in the volatile or
    non-volatile memory of a Consumer-Hardware Instance (“CHI”) *as defined in
    Appendix A* at the moment of fixation**.  Any copy that is **not** an
    Authorised Copy lies *outside* the license **or, where so required by law,
    exceeds the mutually agreed contractual scope of the license**, whether or
    not the remainder of the act occurs on CHI hardware.  

    **Reproduction Nexus (MDY Compliance).**  Consistent with *MDY v. Blizzard*,
    the parties stipulate that “Authorised Copy” status is an **express license
    condition that directly limits the § 106(1) reproduction right**.
    Accordingly, no copy—permanent, temporary, cached, or buffered—may lawfully
    be made unless *every byte* of it resides exclusively within (or is
    transiting directly between) hardware that already satisfies Appendix A at
    the moment of fixation **except as expressly allowed by the Training-Only
    Exception below**.  Any copy placed in RAM, VRAM, storage, or cache on
    Non-CHI hardware is created *outside the license* and therefore infringes
    17 U.S.C. § 106(1) (and the equivalent reproduction right under EU
    Directive 2009/24/EC, art. 4(1)(a)).  This limitation is **a condition
    precedent—or, if a court deems otherwise, an independent contractual
    covenant—** to every permission in §§ 2(a)-(e).  

    **Illustration.**  Loading the Work into VRAM on a Non-CHI GPU, or
    transmitting it over a PCI-Express bus attached to such GPU, constitutes an
    *unlicensed* reproduction and distribution under 17 U.S.C. § 106(1) & (3).  

    **Training-Only Exception.**  For the limited purpose of any training,
    fine-tuning, evaluation, or benchmarking workload that is **not**
    concurrently exposed as a Service, transient or stored copies of the Work
    that reside in the volatile or non-volatile memory of Non-CHI hardware
    qualify as “Authorised Copies” under this Section, **provided that** the
    same Non-CHI hardware is **not simultaneously** used to deliver interactive
    inference derived from the Work to external users.  Nothing in this
    exception permits inference on Non-CHI hardware.  

    **Severability Backup.**  If a tribunal nevertheless holds that any part of
    the foregoing exceeds the lawful scope of § 106, the parties agree that
    (i) the text shall be re-formed or, if necessary, applied purely as a
    contractual covenant to the minimum extent needed to remain enforceable; and
    (ii) breach of that covenant is material and subject to the remedies in
    § 2(f)(d) and § 11.  

    **Condition Precedent.**  The copyright and patent licenses granted in this
    Section arise **only after** You have satisfied **(i)** the CHI test in
    Appendix A and, where applicable, **(ii)** every Service restriction in
    Section 6 (collectively, the “Hardware & Service Limits”).  Until those
    limits are met, **no license of any kind is granted**, and any copy of the
    Work created by loading it into RAM, cache, or storage on Non-CHI hardware
    is an **unlicensed copy** within the meaning of 17 U.S.C. § 106(1).
    **Independent Covenant.**  If a competent tribunal nonetheless holds that
    any Hardware & Service Limit is not a condition precedent to the license,
    the same text shall survive as an **independent, material contractual
    covenant**, and breach of that covenant constitutes a material breach under
    § 11.  For the avoidance of doubt, **each Hardware & Service Covenant is
    both (i) an express license condition of the copyright and patent licenses
    granted herein and (ii) an independent, material contractual covenant,
    enforceable even if a court were to hold it beyond the scope of exclusive
    rights in 17 U.S.C. § 106 or analogous provisions worldwide.**  The Author
    retains all injunctive, specific-performance, and liquidated-damages
    remedies provided herein.  

    Breach of any Hardware & Service Covenant—  
    - **(a)** creates immediate copyright-infringement liability;  
    - **(b)** automatically **terminates** all copyright and patent licenses
      granted herein; and  
    - **(c)** constitutes a **material breach of contract** entitling the Author
      to pursue all remedies available under copyright law **and** contract
      law, including injunctive, specific-performance, or other equitable
      relief; and additionally  
    - **(d) Liquidated-Damages / Disgorgement Remedy.**  In addition to
      equitable relief, each breach of a Hardware & Service Covenant that yields
      commercial gain to the breaching party gives rise to **liquidated damages
      equal to the lesser of (i) USD 10 000 per Non-CHI accelerator (or
      equivalent inference unit) deployed in breach, *or* (ii) one-hundred
      percent (100 %) of the breaching party’s net profits attributable to the
      breach (including profits extracted from a nominally non-profit entity to
      a for-profit affiliate)**.  This amount represents the parties’ reasonable
      pre-estimate of losses that are otherwise extremely difficult to quantify
      and is **not** intended as a penalty.  

        Liquidated damages apply only to profits earned (or cost savings
        realised) in the **two (2) years immediately preceding** commencement of
        an enforcement action, **unless** limiting the window would materially
        frustrate or render impracticable the injunctive or
        specific-performance relief available here; in exceptional
        circumstances, a court (or the Appendix D panel) may extend recovery
        solely as necessary to safeguard equitable relief.  

        Subject to Appendix D (AI-Assisted Arbitration) and any mandatory
        consumer-protection law, **any natural person who accepted this License
        and used the Work during the period of breach may assert a
        representative or class action under Fed. R. Civ. P. 23 (or equivalent)
        to recover such liquidated damages on behalf of all similarly situated
        licensees.**  Courts (or the Appendix D panel) may order pro-rata
        distribution of recovered funds to Class Members or, where individual
        distribution is impracticable, a cy-pres award to nonprofits advancing
        open, consumer-accessible computing.  This remedy is **in addition to**,
        and not a substitute for, injunctive, specific-performance, or other
        equitable relief.  For clarity, the personal-use carve-out in § 2(a)(ii)
        remains unaffected.  

        The parties acknowledge that equitable relief remains subject to
        ordinary principles of **balance-of-hardships and public-interest
        review**, but agree that a breach normally satisfies those principles
        absent contrary proof.  The cure provisions of § 11 apply.  

- **(g) Hardware Covenant as Condition Subsequent (Contractual Fallback).**  

    **Representations & Reliance.**  You represent, warrant, and covenant that
    every act of reproduction, loading, or execution of the Work will occur
    **only on a Consumer-Hardware Instance (“CHI”)**.  The Author’s grant of any
    license or contractual right is made **in material reliance** on that
    representation.  

    **Covenant Not to Invoke Essential-Step Defences.**  
    You **covenant not to rely on, assert, or invoke—against the Author or any
    Contributor—** any statutory defence or exception that would otherwise
    permit reproduction, loading, displaying, running, transmitting, or storing
    the Work on **Non-CHI hardware**, including **but not limited to**  
    - the “essential-step” defence in **17 U.S.C. § 117(a)** (United States);  
    - **Article 5(1)** of **Directive 2009/24/EC** and all national
      implementations (EU / EEA);  
    - **s 47B** of the **Australian Copyright Act 1968**;  
    - **s 30.6** of the **Canadian Copyright Act RSC 1985 c C-42**; and  
    - any **equivalent provision** in other jurisdictions.  

    Any reliance on such a defence constitutes a **material breach** of this
    License and triggers the suspension and termination terms of § 11.  

    **Automatic Termination under Contract Law.**  
    **If You breach this covenant, all licenses and contractual rights granted
    herein terminate automatically, *ab initio as to the infringing act*,
    without further notice.**  Termination is a **condition subsequent** to each
    permission granted, not a mere promise.  

    **Severability.**  Even if a court or arbitrator holds that the CHI
    restriction exceeds the scope of 17 U.S.C. § 106 or analogous laws, **the
    covenant, representation, reliance, and automatic-termination mechanism in
    this sub-clause shall remain fully enforceable as a matter of contract**.  

    **Equitable Relief Preserved.**  The parties stipulate that breach causes
    irreparable harm; the Author may obtain injunctive or specific-performance
    relief without bond.  

    **Survival.**  This sub-clause survives any other severance or reform of
    § 2(f).

**and**

- **(h) Personal-Use Survival Clause.**  
    Notwithstanding any other provision, the non-commercial, single-user
    inference rights granted in §§ 2(a)(i)–(ii):  
    - **(i)** survive, to the maximum extent permitted by the upstream license
      and mandatory law, any termination of upstream licenses affecting
      embedded CC-BY-SA, Llama, or similar material;  
    - **(ii)** are **not suspended** by breaches committed solely by third
      parties; and  
    - **(iii)** may be *temporarily* suspended for the natural person’s own
      conduct **only after** (a) written notice describing the alleged breach,
      (b) a 150-day opportunity to cure, and (c) a final adjudication that the
      person **wilfully** violated both a Hardware Covenant *and* the Service
      Covenants.  
        **For avoidance of doubt, the 150-day cure window and the
        final-adjudication safeguard in this sub-clause prevail over any shorter
        cure period or automatic-suspension mechanism elsewhere in this
        License, including § 11.1.**   
        Innocent mis-configuration cured within the notice period does **not**
        suspend these rights.  

────────────────────────────────────────────────────────────────────────

3.  PATENT GRANT

────────────────────────────────────────────────────────────────────────

Subject to the terms and conditions of this License, each Contributor
hereby grants to You a **perpetual, worldwide, non-exclusive, no-charge,
royalty-free, irrevocable** (except as stated below) patent license to
**make, have made, use, offer to sell, sell, import, and otherwise
transfer the Work**, where such license applies only to patent claims
licensable by that Contributor that are **necessarily infringed** by the
Contributor’s Contribution(s) alone or in combination with, or both, the
unmodified Work (“Contribution + Work”).  

If **You or any Affiliate** (i) **assert or control** a patent and (ii)
**institute or voluntarily join** any patent litigation (including a
cross-claim or counter-claim) **alleging** that the Work or any
Contribution infringes that patent, including but not limited to direct or
contributory patent infringement, then **all** patent licenses granted to
You under this Section terminate as of the filing date, *except* that a
purely defensive counter-claim filed in direct response to a prior
assertion against You does **not** trigger termination, and litigation
about products or services **unrelated to the Work** does **not** trigger
termination.  

────────────────────────────────────────────────────────────────────────

4.  TRADEMARKS

────────────────────────────────────────────────────────────────────────

CEL-1.00 conveys **no** trademark rights. Nothing in this License authorises
use of any trade name, trademark, or service mark belonging to the Author or
to any third party, except for fair and factual reference.  

────────────────────────────────────────────────────────────────────────

5.  REDISTRIBUTION REQUIREMENTS

────────────────────────────────────────────────────────────────────────

- **5​.​1 Verbatim Copy.**  
    You may redistribute unmodified copies of the Work in Source or Object form
    provided You:

    - (i) include the entire, unaltered CEL-1.00 text, **and**
    - (i-bis) include an unaltered copy of the Summary named
      `SUMMARY-CEL-1.00.md` **or** `SUMMARY-CEL-1.00.txt`,  
    - (ii) clearly point recipients—**in the same user-interface element**—to
      on-screen copies of both:  

        - **Full License**:  
          [LICENSE-CEL-1.00.md](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md)  

        - **One-Page Summary**:  
          [SUMMARY-CEL-1.00.md](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md)  

      before download or first run,  
    - (iii) make acceptance of CEL-1.00 an affirmative (e.g., click-wrap) act.  

- **5​.​1‑bis  Offline-Media Distribution (Torrents, Optical Discs, USB,
  SD‑Cards).**  
    Any party that redistributes the Work via non‑networked or peer‑to‑peer
    media **must** satisfy all of the following, in addition to § 5.1 (Verbatim
    Copy) and, where applicable, § 5.2 (Modified Versions):  

    1. **License & Summary Files.**  
       Place unaltered copies of **both**
       `LICENSE-CEL-1.00.{md,txt}` **and** `SUMMARY-CEL-1.00.{md,txt}` in the
       **top‑level directory** (or volume root) of the medium or torrent.  

    2. **Prominent Notice (dual).**  
       Include, on any external packaging, disc label, insert, sleeve, or
       torrent description / `.nfo`, the text:  
       *“Distributed under the ConsumerEconomy License (CEL-1.00).  See the
       one-page Summary (SUMMARY-CEL-1.00.md) and full text (LICENSE-CEL-1.00.md).
       Acceptance of CEL-1.00 is required for any use.”*  
       For online torrent listings, the notice **must** contain a clickable
       hyperlink to both:  
         - **Full License**:  
           [LICENSE-CEL-1.00.md](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md)  

         - **One-Page Summary**:  
           [SUMMARY-CEL-1.00.md](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md)  

    3. **Pre-Execution Display.**  
       If the medium contains any auto‑run, bootable image, or script that would
       distributor **must** display, with equal prominence, either:  
       - (A) a scroll-box containing **both** CEL-1.00 **and** the Summary, **or**  
       - (B) immediate hyperlinks that load each document,  
       **before** first execution.  

    4. **Assent Opportunity.**  
       No end-user action other than viewing or copying the files may be
       required to access the License. Any installation wizard or first-run
       screen **must** require affirmative assent (e.g., check-box or “I Agree”
       button) **or** allow the user to abort without penalty.  

    5. **Torrent Piece Inclusion.**  
       For BitTorrent or similar peer-to-peer swarms, the files
       `LICENSE-CEL-1.00.md` **and** `SUMMARY-CEL-1.00.md` **must** both be
       included in the first piece(s) so that clients receive the dual text
       early in the download process.  

    6. **Deployment-Templates.**  
       A bootable USB, VM image, or container snapshot distributed offline is a
       “Deployment-Template” under § 5.5; the distributor must still present the
       License on first boot or login.  

    7. **Material Breach.**  
       Failure to comply with any obligation in this § 5.1‑bis constitutes a
       **material breach of this License**. All legal consequences (automatic
       suspension, cure periods, and possible permanent termination) are
       governed exclusively by **Section 11 (Term & Termination)**.  

    *Cross‑Reference:* Sections 1 (Definitions), 5 (Redistribution Requirements),
    11 (Term & Termination). 

- **5​.​1-ter “Equal-Prominence Rule.”**  
    Wherever this License requires a link, scroll-box, or printed notice pointing
    to CEL-1.00, the distributor **must with equal visual prominence** point to
    the Summary (or embed it in the same scroll-box) so that a reasonable user can
    read the one-page overview *before* assenting.  

- **5​.​2 Modified Versions.**  
    Distribution of any Derivative Work must, in addition to §5.1:  

    - (i) carry prominent notice of modification and effective date;  
    - (ii) retain all existing copyright, patent, and attribution
      notices;  
    - (iii) reproduce any NOTICE file; and  
    - (iv) keep every Protected Term intact, in original order, and in a
      machine-readable format. Obfuscation, framing, or hidden text
      constitutes removal.  

    Non‑conforming redistribution constitutes a **material breach of this
    contract** and immediately **suspends all licenses and contractual rights
    granted herein**. Such licenses and rights reactivate automatically once
    the breach is cured.  

- **5​.​2-ter  Training-Only Outputs.**  
    You may copy, publish, or license a TOO under any terms of Your choice
    **provided that**:  

    - (a) it is **not** distributed as part of a *Combined Work* with any
      CEL-governed code, weights, prompts, or other expressive assets.
      *Aggregate Distributions are permitted* so long as each component
      keeps its own license notice; and  
    - (b) Public materials (e.g., README, model card, marketing) **may**,
      at the distributor’s sole discretion and **non-binding**, solely for
      informational purposes, include a statement identifying any
      CEL-governed inputs that informed the training process. Such
      disclosure is made solely for transparency and **without prejudice to
      any argument** that the resulting Training-Only Output is
      non-derivative, transformative, or otherwise, and **shall not** be
      construed as an admission of derivative-work status.  

    **Clarification.** If a Service deployment forms a *Combined Work*
    by integrating a TOO with CEL-governed components, the CEL terms
    attach to those CEL components. An Aggregate Distribution alone does
    **not** trigger those terms for the TOO.  

- **5​.​3 ULRT.**  
    You may append the minimum Upstream-License-Required Terms necessary to comply
    with external licenses (e.g., CC-BY-SA, CC-BY-NC, the **META LLAMA 3 COMMUNITY
    LICENSE AGREEMENT, LLAMA 3.1 COMMUNITY LICENSE AGREEMENT, and LLAMA 3.3
    COMMUNITY LICENSE AGREEMENT**). Newer “Llama” licenses are *not* incorporated
    by default. Each ULRT must:  

    - (i) apply only to the specific material so governed,  
    - (ii) may not **abrogate** any Protected Term for material that is *not*
      covered by the ULRT, and  
    - (iii) is clearly labeled “ULRT—applies only to [component]”.  

- **5​.​3-bis Aggregation With Share-Alike Material**  
    Mere side-by-side aggregation of CC-BY-SA, CC-BY-NC, GPL or similar works in
    the same repository or container is permitted, provided each retains its
    original license. You may **not** create a single Derivative Work
    simultaneously governed by CEL and any license that forbids the additional CEL
    restrictions.  
    This paragraph **does not apply** to a **Training-Only Output licensed
    separately under § 5.2-ter**.  

- **5​.​4 Additional Terms.**  
    Except for ULRT under §5.3, You may not impose any term that diminishes
    permissions granted by CEL-1.00; **however You _may_ add ancillary provisions
    that**:  

    - (a) disclaim warranty or limit liability differently from §8;  
    - (b) require preservation of reasonable legal notices or author attributions;  
    - (c) prohibit misrepresentation of the origin of the material, or require
      modified versions to be marked in reasonable ways as different from the
      original;  
    - (d) limit the use of licensors’ or authors’ names for publicity purposes; or  
    - (e) decline to grant rights under trademark law for certain trade names,
      trademarks, or service marks.  

- **5​.​5 Deployment-Templates = Redistribution.**  
    - (a) Offering, selling, renting, leasing, or otherwise making a DT available
      to third parties **is** “redistribution” of the Work, even if the DT is
      executed on hardware owned by the recipient.  
    - (b) A hosting provider that boots a DT for its customer **must** present,
      with equal prominence, **both**:

      - the full text of CEL-1.00 (or a URL that loads it), **and**
      - the one-page Summary (or a URL that loads it)

      in a human-readable form before first power-on or login, and must record
      affirmative acceptance.
    - (c) Automating end-user inference (including auto-starting a web server, API
      listener, or CLI that exposes the Work) without requiring substantive code
      modification by the customer is deemed “interactive Service” under §6.  

- **5​.​6 Version Freeze.**  
    All Appendices to CEL-1.00 are fixed as printed below. Later updates posted on
    any web site are informational only and have **no legal effect** unless adopted
    in a new CEL version that You separately accept under § 10.  

- **5​.​7 “CI / CD” Automation Safe-Harbour.**  
    A text-based configuration file (e.g., GitHub Actions YAML, GitLab-CI,
    Jenkinsfile) that (i) fetches the Work from a location already distributing it
    under CEL, (ii) executes it only for automated build, test, lint, or benchmark
    steps, and (iii) exposes no interactive endpoint to external users, is **not**
    a “Service” within the meaning of §6, and external API calls made solely
    within such automation (including to OpenRouter) are governed by §2(a)(ii),
    not §6.3.  

- **5​.​8 License-Text Q&A Safe-Harbour.**  
    Uploading, transmitting, or otherwise conveying an **unmodified** copy of
    `LICENSE-CEL-1.00.md` **or** `LICENSE-CEL-1.00.txt` to any third-party or
    self-hosted large-language-model (“LLM”) service (each a “**Service**”) by
    the person who initiates that upload (the “**Uploader**”) **solely for**
    (a) answering natural-language questions about CEL-1.00 **or**
    (b) assisting humans in drafting a *proposed later* CEL version
    **is permitted** and **shall not** be treated as “redistribution” under § 5,
    “Service” under § 6, or creation of a “Combined Work” under § 1.18-quater —
    **provided that**:  
        - (i) **no** other CEL-governed weights, code, checkpoints, or prompts
          accompany the upload;  
        - (ii) the **Uploader does not knowingly** prompt or configure the Service to
          reproduce more than **25 %** of the license text verbatim in any single
          response and, **where feasible using the Service’s public settings or
          system-prompt controls, enables reasonable measures** to reduce inadvertent
          over-length excerpts; an overrun produced solely by the Service’s
          autonomous behaviour **does not, by itself, vitiate** this Safe-Harbour; and  
        - (iii) the Service operator acquires **no new rights** in CEL-governed material
          beyond this limited purpose.  

    *Non-authoritative.*  
    Outputs generated under this Safe-Harbour (including verbatim or near-verbatim
    excerpts of CEL) are **strictly non-binding** and carry **no evidentiary weight**
    in any Appendix D arbitration or other proceeding to construe or enforce this
    License.  

    Nothing in this § 5.8 authorises any other use of the Work on Non-CHI hardware or
    proprietary back-ends; all Hardware & Service Covenants in §§ 2 (f)–(g) and 6
    remain fully applicable.  

────────────────────────────────────────────────────────────────────────

6.  SERVICE COVENANTS (LICENSE CONDITIONS & CONTRACTUAL COVENANTS)

────────────────────────────────────────────────────────────────────────

**Legal effect.** All obligations in this Section 6 constitute
**Service Covenants** as defined in § 1. Each Service Covenant is both (i) an
**express condition** of the copyright and patent licenses granted in § 2 and
(ii) an **independent, material contractual covenant**. Breach of any
Service Covenant **automatically terminates** those licenses **and**
constitutes a **material breach of contract**, subject to the cure provisions
of § 11.

For avoidance of doubt, starting, booting, or otherwise operating a
Deployment-Template on behalf of a third party—whether or not that party later
logs in—**is** “providing the Work as a Service” and must satisfy this Section.

- **6​.​1 CHI Mandate (Inference Only).**  
    Except as permitted by the **Training-Only Exception** in § 2(f), every compute
    operation that **serves interactive inference of the Work to anyone other than
    You** must run on Consumer-Hardware Instances.  
      
    Non-user-facing training, fine-tuning, evaluation, or benchmarking workloads
    carried out under the Training-Only Exception may execute on Non-CHI hardware
    **only if** the same hardware is *not simultaneously* exposing **CEL-governed
    assets (including any Combined Work)** as an interactive Service.  
      
    Where a training loop cannot be practically segregated from live inference
    (e.g., on-policy RLHF that accepts real-time user prompts), the inference
    component **still** triggers this Section.  
      
    You MAY aggregate any number of CHI—including within a single rack, cabinet,
    colocation cage, or cloud region—**provided that** each node independently
    satisfies Appendix A and the deployment otherwise respects the MAU thresholds
    in § 6.4. Exceeding those thresholds merely triggers the transparency and
    arbitration duties of § 6.4; it is **not** a categorical violation.

- **6​.​1-bis Consumer-Compatible Third-Party Hosting**  
    You MAY provide the Work as a Service on infrastructure rented from a
    third-party host (e.g., RunPod, Vast.ai, Lambda Cloud, Hetzner)
    if **all** of the following are true:  

    - (a) The Service serves fewer than 25 000 MAU in the most recent
        30-day window.  
    - (b) Each node’s **primary AI accelerator** (GPU, NPU, TPU, etc.) satisfies the
        GPU-oriented CHI tests in Appendix A (price-cap, consumer-lineage, die-size,
        public availability) irrespective of what CPU, RAM, or storage accompany it.  
    - (c) Non-accelerator components (server-class CPUs, ECC RAM, large memory, fast
        networking, NVMe arrays) are permissible provided _both_ of the following hold:  

        - (i) they do **not** raise measured tokens-per-second throughput on the licensed
            model by more than **five times (5 ×)** versus a reference build that swaps
            only a mainstream desktop CPU (e.g., Ryzen 9) and 128 GiB of DDR5 RAM; and  
        - (ii) their cost does not exceed five times (5 ×) the accelerator cost on that node.  
    - (d) The accelerator model(s) are openly offered to the public through a
        self-service portal—no “contact-sales” or enterprise-only negotiation—and
        each accelerator’s first retail list price did not exceed USD 4 750.  
    - (e) You have performed and retained a reasonable, documented inspection
        (e.g., `lspci`, `nvidia-smi`, PCI/USB IDs, pricing-page screenshots,
        retail order confirmations) showing compliance with (b)–(d) and
        with Appendix A-8.  

    Where these conditions are met, the mere fact that CHI sit inside a
    data-centre or share common power distribution **does not** make the
    deployment “non-consumer.”  

- **6​.​2 Disallowed Hardware (Inference)**  
    For inference compute governed by §6.1, You may **not** use GPUs or
    accelerators categorised by the manufacturer or market as “data-centre”,
    “enterprise”, “server”, “wafer-scale”, or any device whose list price
    exceeded USD 4 750 **per accelerator** at first retail availability—see
    Appendix A.  
    This limitation does **not** apply to offline training or evaluation
    workloads that are not exposed as a Service.  

- **6​.​3 Third-Party Proprietary Back-Ends**  
    The following applies **only** when the Work is provided as a Service under
    § 6. Personal use under § 2(a)(ii) is unaffected.  

    - (a) A Service MAY delegate up to ten per-cent (10 %) of its total
      **Token-Traffic—calculated after the Retry-Batch adjustment in
      § 1.18-sexies—** in any rolling 30-day window to an **external proprietary
      model** that satisfies **all** of the following:  

        - (i) The model appears in **Appendix B – Allowed Proprietary Models**
          *or* You have obtained the Author’s prior written consent to add it.  

        - (ii) The provider offers the model to the general public through a
          self-service API or Web UI, without enterprise-only negotiation or
          real-name identity verification beyond normal anti-fraud checks.  

        - (iii) The provider’s public technical specification demonstrates
          capability equal to or greater than the locally hosted model.  

        - (iv) Only text or code tokens are exchanged; no images, audio, or
          embeddings containing personal data are transmitted.  

        - (v) Inclusion in Appendix B is at the **sole, subjective discretion
          of the Author**, who may consider—without limitation—long-context
          coherence, multi-step reasoning, safety record, and observed
          real-world performance on escalated queries.  

          The Author will not grant preferential treatment to any model
          operated by an entity in which the Author (or an immediate family
          member) holds > 5 % equity. The Author will evaluate inclusion
          requests from any vendor on the same objective and subjective criteria.

    - (b) Delegation to any proprietary model not meeting (a) is prohibited.  

- **6​.​3-bis  Non-Inference External Services Safe-Harbour**
    Invoking, forwarding data to, or otherwise using a **Non-Inference
    External Service (NIES)** is **permitted without limit** and is **not**
    “delegation of inference” under § 6.3, **provided that**:  

    1. **No copy** of the Work—including checkpoints, fine-tuned derivatives,
    or Operational Prompts—is transferred to, or made accessible by, the
    NIES; and  
    2. Any tokens or text sent to the NIES are limited to the minimum
    necessary to complete the NIES’s advertised function and are **not**
    used by the NIES to generate open-ended creative text or otherwise
    perform language-model inference *on behalf of* the Service operator;  
    3. **AI-driven curation** internal to the NIES—such as summarising,
    redacting, ranking, or classifying responsive records—is deemed
    *incidental* to the records-retrieval task and does **not** convert
    the NIES into a delegated inference service.  

    *For avoidance of doubt*, sending CEL-generated text to a payment
    processor, electronic-filing gateway, travel-booking API, or similar
    endpoint whose primary role is transactional rather than generative is
    squarely within this safe-harbour, even if that endpoint employs
    closed-weights AI internally.  

    *Official Government Portals.* For avoidance of doubt, interactions with
    official government systems at any jurisdictional level—including chat- or
    agent-based portals for FOIA, public-records, tax filings, regulatory
    compliance, or similar—are categorically treated as NIES under this
    clause.  

- **6​.​3-ter  Incidental Ingestion Safe-Harbour**
    Collecting, storing, or processing **Incidental External Information
    (IEI)** shall **not** be deemed “delegated inference” or otherwise breach
    this License *provided that*:  

    1. The IEI is ingested only in the ordinary course of operating the
    Service (e.g., environmental sensing, public-broadcast monitoring,
    web-crawling for analytics, or user-requested trend analysis);  
    2. No portion of the Work’s weights, checkpoints, or proprietary
    Operational Prompts is disclosed to, or shared with, the external
    source of the IEI;  
    3. The Service does **not** systematically rely on the IEI as a
    substitute for performing its own language-model inference in
    circumvention of § 6.3; and  
    4. Any AI-generated or AI-modified portions of the IEI are treated as
    **Untrusted External Content** under § 1.27 and subjected to the same
    safety and provenance checks applied to other untrusted inputs.  

    *For avoidance of doubt*, passively receiving an AI-generated radio
    broadcast, scraping a newsfeed that contains synthetic text, or similar
    incidental exposure to “AI slop” is fully permissible under this
    Safe-Harbour, so long as the conditions above are met,
    **provided the Licensee did not solicit, direct, or customise that
    AI-generated content for the purpose of obtaining inference, evaluation,
    or fine-tuning results** (e.g., an unsolicited press release that happens
    to mention the Licensee’s product is acceptable, but orchestrating a
    third-party AI broadcast specifically to answer prompts on the Licensee’s
    behalf is *not*).

- **6​.​3-quater  Residual Incidental Data Safe-Harbour**
    The Licensee **is not required to undertake perfect or exhaustive
    deletion** of Residual Incidental Data, provided that it exercises
    **commercially reasonable efforts**—consistent with its technical,
    security, and operational constraints—to:  

    1. prevent further wholesale outsourcing of inference to non-consumer
    hardware contrary to § 6.3;  
    2. avoid intentional use of RID as a substitute for the Work’s own
    inference capabilities; and  
    3. document, via tamper-evident internal logging, automated
    **self-attestation** generated by the Service itself, or other
    cryptographically verifiable controls, that any remaining RID is
    *de-minimis* and poses no material risk of violating this License; and  
    4. where direct human inspection of Operational Prompts is infeasible,
    a **reasonable automated assertion** produced by the Service—supported
    by tamper-evident logs, remote attestation, zero-knowledge proofs, or
    comparable mechanisms—*shall satisfy* the documentation duty,
    provided the Licensee maintains procedures to detect and remediate
    any material misrepresentation.  

    *For avoidance of doubt*, inadvertent retention of small amounts of
    AI-generated content—such as autogenerated metadata, cached search
    snippets, or log traces—does **not** itself trigger a breach, so long as
    the conditions above are met.  

- **6​.​4 MAU Threshold.**  
    If Your Service exceeds 25 000 MAU in any rolling 30‑day period You must,
    within 30 days:  

    - (i) publish hardware‑integrity proofs under Appendix C‑1;  
    - (ii) appoint an Ombudsperson in accordance with § 1.20;  
    - (iii) accept binding AI‑assisted arbitration under Appendix D.  

    For clarity, the personal-use rights in § 2(a)(i)–(ii) remain available to every
    natural person irrespective of the operator’s compliance with this § 6.4.

    Failure or refusal automatically **suspends** Your Service license until cured
    **and constitutes a material breach of contract**.

    **Rebuttable Presumptions.**  
    If the operator fails to maintain or produce reasonable MAU records, the
    Service is *presumed* to exceed 25 000 MAU whenever **either**  
      - (a) the combined first-retail list price of accelerators actively serving
        interactive inference exceeds **USD 20 000 000**, **or**  
      - (b) gross cash or in-kind revenue attributable to the Service exceeds
        **USD 50 000** in any calendar month.  
    The operator may rebut the presumption by supplying credible MAU
    evidence consistent with § 1.7.  

- **6​.​5 Emergency Exception.**  
    Governmental or first-responder entities serving nations
    < 140 million population may, **solely for latency-critical emergency
    response**, temporarily exceed CHI limits provided no industrial
    production results. This exception ends when the emergency ends.  

- **6​.​6 Zero-Retention / No-Training Option.**  
    Any Service that authenticates or charges users—whether anonymously,
    pseudonymously, or with government-issued ID—**must** offer, at
    materially equivalent price, latency, and quality, a **Zero-Retention
    Mode (ZRM)** path for every model and non-agentic capability otherwise
    exposed (ie. all compute-intensive inference). Surcharging the ZRM path
    by more than ten per-cent (10 %), artificially rate-limiting it, or
    degrading model quality or latency (save for the minimal overhead needed
    to effect ZRM) is prohibited.  
    If mandatory law in the place of operation makes Zero-Retention
    impossible, the operator must decline or terminate the affected
    deployment; continuing anyway is a **material breach of contract and
    license conditions**.  

- **6​.​7 Distillation Non-Interference**  
    Except as narrowly allowed in (a)–(b) below, You may not impose contractual
    terms, rate limits, cryptographic challenges, watermarks, or other technical
    measures whose principal purpose or predominant effect is to hinder lawful
    knowledge-distillation, model extraction, benchmarking, or other
    general-purpose logic or scientific use of the publicly available portions
    of Your Service.  

    - (a) Measures strictly necessary **and proportionate** to protect:  
        - (i) **Personal Prompts**, user-supplied or user-stored content,
          or other **Personal Data**;  
        - (ii) **Prompt-Integrity** (as defined in § 1.23), including sanitising
          or quarantining **Untrusted External Content** (§ 1.27) and preserving
          the confidentiality of **Prompt-Defence Components** (§ 1.26); or  
        - (iii) service availability,  

        are permitted.  

        **Measures whose principal purpose or predominant effect is to conceal or
        obfuscate any *Operational Prompt* do *not* qualify for this safe-harbour,
        unless and only to the extent their disclosure would unavoidably reveal
        material protected under § 6.7 (a)(i).**  

        *Prompt-Defence carve-out*: You may withhold any **Prompt-Defence
        Component** (§ 1.26) **in its entirety**, **provided**  
            - (A) it is kept logically separate from Operational Prompts; and  
            - (B) you publish a concise, good-faith summary of its defensive
              purpose and integration point (e.g., “a rotating transformer-based
              guard model evaluates every user input for policy violations before
              concatenation with the main system prompt”). No further disclosure
              of the component’s internal weights or prompt text is required.  

    - (b) You may enforce valid distillation prohibitions that a third-party
      back-end imposes, **provided** Your use of that back-end complies with § 6.3.  

- **6​.​7 (bis) Enforcement of security policy**  
    Nothing in this license obliges a Service operator to continue processing
    requests that are reasonably believed to (i) test or exploit prompt-injection
    defences, (ii) exfiltrate credentials, **Personal Data, or other sensitive
    user-specific information (including trade secrets)**, or (iii) exceed stated
    rate limits. The operator may temporarily or permanently restrict such
    sessions **if** it records the time of the event, the policy clause invoked,
    and an incident reference that does **not** contain, derive from, or allow
    reconstruction of the User’s input. No copy or hash of the input itself may
    be retained without the User’s explicit consent.  

    All such measures must be proportionate; the burden of proof rests on the
    Service operator.  

────────────────────────────────────────────────────────────────────────

7.  ANTI-LOOPHOLE & INTERPRETATION

────────────────────────────────────────────────────────────────────────

- **7​.​1 “Purpose Control.”**  
    The parties acknowledge that the overriding purpose of this License is to
    confine use of the Work to Consumer‑Hardware Instances and to safeguard the
    personal‑use carve‑out in § 2(a)(ii). Therefore, if any restriction—whether a
    Hardware Covenant, Service Covenant, or other clause—is held unenforceable in
    whole or in part as an *express copyright‑license condition*, the same text
    shall, to the maximum extent permitted by law, be re‑construed and enforced
    as an *independent, material contractual covenant* so as to preserve that
    purpose. No interpretation of this License shall enlarge any grant of rights
    beyond what is strictly necessary for enforceability, nor shall it authorize
    inference or service operation on hardware that would have violated the
    original Hardware Covenant.

- **7​.​2 “Anti-Evasion.”**  
    No party may rely on selective quotation, specialised sector jargon, secret
    industry codes, or machine-obfuscated text to narrow, enlarge, or otherwise
    distort the plain-language meaning of this License.

- **7​.​3 “Severability and Reformation.”**  
    If any provision of this License—including any Hardware Covenant or other
    restriction on hardware or service use—is held unenforceable or invalid in
    whole or in part by a court of competent jurisdiction, the remaining
    provisions shall remain in full force and effect. To the extent that any
    hardware or service‑use restriction cannot be enforced as an **express
    copyright‑license condition**, the parties intend and agree that such
    restriction shall nevertheless be given full effect as an **independent,
    material contractual covenant**.  

    The court is expressly authorized and requested to **reform** any
    unenforceable language to the minimum degree necessary to uphold the Author’s
    intent to confine use of the Work to Consumer‑Hardware Instances (and, where
    applicable, to the personal‑use carve‑out in § 2(a)(ii)). Under no
    circumstances shall partial invalidity (a) expand any license granted herein
    beyond what is strictly necessary for enforceability or (b) permit inference
    or service operation on hardware that would have violated the original
    Hardware Covenants.

- **7​.​4 “Entire Agreement”** (**a “Protected Term” for § 1.8**)  
    This License, including its fixed Appendices, constitutes the entire
    agreement between You and the Author concerning the Work and supersedes all
    prior oral or written understandings. It may be modified only (i) by a later
    CEL version that You explicitly accept under § 10, or (ii) by a written
    amendment signed by both You and the Author.

- **7​.​5 “Personal-Use Precedence.”**  
    If a court, arbitrator, or other competent authority must sever or limit any
    provision of this License in order to uphold it, the parties agree that (i)
    the rights of natural persons to perform personal, non-service inference
    under § 2(a)(i) and § 2(a)(ii) shall be preserved to the maximum lawful
    extent, and (ii) permissions to provide the Work as a Service under § 6 may
    be curtailed or eliminated before any personal-use right is restricted.

- **7​.​6 “No Pre-emption Waiver.”**  
    Each party irrevocably waives and disclaims any argument that enforcement of
    a Hardware Covenant or Service Covenant is pre-empted by federal copyright
    law or equivalent statutory scheme, to the maximum extent permitted by law.

────────────────────────────────────────────────────────────────────────

8.  WARRANTY & LIABILITY

────────────────────────────────────────────────────────────────────────

EXCEPT TO THE EXTENT REQUIRED BY APPLICABLE LAW, THE WORK (INCLUDING ALL
CONTRIBUTIONS, DOCUMENTATION, AND OUTPUT) IS PROVIDED
**“AS IS” AND “WITH ALL FAULTS,”** WITHOUT EXPRESS OR IMPLIED WARRANTIES OR
CONDITIONS OF **ANY** KIND.  WITHOUT LIMITATION, THE CONTRIBUTORS SPECIFICALLY
DISCLAIM ALL IMPLIED WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, SATISFACTORY QUALITY,
DATA ACCURACY, OR QUIET ENJOYMENT.  TO THE MAXIMUM EXTENT PERMITTED BY
APPLICABLE LAW, IN NO EVENT SHALL ANY CONTRIBUTOR BE LIABLE FOR ANY DIRECT,
INDIRECT, SPECIAL, INCIDENTAL, CONSEQUENTIAL, OR EXEMPLARY DAMAGES (INCLUDING,
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, PROFITS, OR GOODWILL; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND UNDER
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF OR
INABILITY TO USE THE WORK, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

────────────────────────────────────────────────────────────────────────

9.  OPTIONAL SUPPORT OR INDEMNITY

────────────────────────────────────────────────────────────────────────

You may offer paid support, warranty, or indemnity **on Your own behalf** only,
and must indemnify every other Contributor **and the Author** against any
claim, fine, or penalty arising from Your failure to comply with
data-protection, record-keeping, or Zero-Retention obligations.

────────────────────────────────────────────────────────────────────────

10.  NEW CEL VERSIONS

────────────────────────────────────────────────────────────────────────

- **10​.​1 Authority.**  
    The Author (or up to nine named natural-person delegates) may publish new
    CEL versions.  

- **10​.​2 “Any Later Version” Clause.**  
    If the Work states “CEL version 1.00 or any later version”, You may choose
    to follow the published later version.  

- **10​.​3 Limits on Later Versions.**  
    A future CEL may introduce additional obligations **only** when required
    for:

    - (a) mandatory compliance with an external, non-waivable license;  
    - (b) compatibility with a more protective copyleft license;  
    - (c) closing a documented consumer-hardware loophole; or  
    - (d) excluding a Very-Large Actor whose conduct contradicts this license’s
      spirit.  
    - (e) publishing an optional, privacy-preserving MAU counting annex if the
      Author finds that widespread evasion of § 6.4—*including, but not limited
      to, any single Service exceeding 10 million MAU that is in material
      breach*—materially undermines this License.  

    Such added obligations must be the **minimum effective measure** and may
    not withdraw personal-use rights granted herein.  

- **10​.​4 Duress Clause.**  
    Any purported later version issued under coercion, threat, or fraud is void
    ab initio.  

────────────────────────────────────────────────────────────────────────

11.  TERM & TERMINATION

────────────────────────────────────────────────────────────────────────

CEL‑1.00 remains in force only while You comply with all Protected Terms. **All
licenses *and contractual rights* granted herein are automatically suspended**
during any period in which You are in **material breach** of (i) any express
license condition **or** (ii) any Hardware Covenant, Service Covenant, or other
material contractual covenant of this Agreement. Rights reactivate
automatically once the breach is fully cured, except that patent licenses
terminated under § 3 do not revive.

- **11​.​1 Cure Period.**  
    If the Author (or another Licensor) provides written notice reasonably
    describing the breach, You must cure it within forty-five (45) calendar days
    (**one-hundred-fifty (150)** for natural persons acting solely under
    § 2(a)(i)–(ii)), **except where a longer cure period is expressly provided
    elsewhere (e.g., the 150-day period in § 2(h))**. Failure to cure within the
    applicable period converts the suspension into permanent termination.

- **11​.​2 Repeated Breach.**  
    Deliberate or repeated breach-cure cycling is itself a continuing material
    breach and may be deemed incurable.

- **11​.​2-bis Downstream Continuity.**  
    Termination or suspension affecting one licensee (“Breaching Party”) does
    **not** retroactively void or impair  
        (a) any copyright or patent license already granted to any other party
        that, at the time of its own act of reproduction, modification, or
        distribution, was in good-faith compliance with this License, **nor**  
        (b) any lawful copies that such other party created while its license
        was in force.  

    Subsequent use or distribution by those parties continues to be governed by
    CEL-1.00 as though the Breaching Party had never held rights, provided they
    remain independently compliant with all Protected Terms.

- **11​.​3 Survival.**  
    Sections 4 (Trademarks), 7 (Anti‑Loophole & Interpretation),
    8 (Warranty & Liability), 12 (Governing Law & Forum), 20 (CC-BY-SA & Similar
    Share-Alike Material), and any covenant that by its nature should survive,
    remain effective notwithstanding suspension or termination.

- **11​.​4 No Waiver of Remedies.**  
    Suspension or termination under this Section does not limit any other remedy
    available at law or in equity.

────────────────────────────────────────────────────────────────────────

12.  GOVERNING LAW & FORUM

────────────────────────────────────────────────────────────────────────

Unless mandatory law provides otherwise, this License and any dispute, claim,
or cause of action arising out of or relating to it (collectively, “Disputes”)
shall be governed by the **substantive law, excluding its conflict-of-law
rules, of *one*** of the following jurisdictions, **at the Author’s written
election** made before or contemporaneously with the filing of the first
pleading in the Dispute—  

  - (a) the jurisdiction in which the Author maintains principal domicile on the  
    date the Dispute is commenced; **or**  
  - (b) the State of New York, U.S.A.; **or**  
  - (c) the Kingdom of the Netherlands; **or**  
  - (d) the Federal Republic of Germany; **or**  
  - (e) the Republic of Estonia; **or**  
  - (f) the French Republic (France); **or**  
  - (g) the Swiss Confederation (Switzerland).  

Venue for all proceedings **not subject to Appendix D arbitration** lies
exclusively in the competent courts of the governing-law forum so elected.
The parties irrevocably submit to the jurisdiction of those courts and waive
any objection based on venue or forum *non conveniens*.

This clause does **not** deprive any consumer habitually resident in the
European Economic Area of non-waivable rights under Articles 17-19 of
Regulation (EU) 1215/2012 (or successor law) to litigate in the courts of their
habitual residence. Nothing in this Section limits any mandatory
consumer-protection rights or public-policy defenses that would apply under the
law of the consumer’s habitual residence.

────────────────────────────────────────────────────────────────────────

13.  ACCEPTANCE

────────────────────────────────────────────────────────────────────────

- **13​.​1 General Acceptance by Conduct**  
    This License takes effect when You first give the assent described in the
    Preamble. Any act of downloading, installing, compiling, executing, **saving,
    loading, or causing any part of the Work to be fixed in RAM, VRAM, cache, or
    persistent storage—*including on Non-CHI hardware***—after reasonable notice
    of this License constitutes acceptance by conduct. The parties stipulate that
    such fixation is “use” for purposes of contract formation even if later held
    non-infringing under 17 U.S.C. § 117 or Directive 2009/24/EC. Operation
    without such assent is an unlicensed act.

- **13​.​2 Archive or Disc-Image Distribution (Reasonable-Opportunity-to-​Review
  Safeguard)**  
    If the Work is supplied in any form that must be unpacked, mounted, or
    executed *before* the user sees a graphical installer or command-line prompt—
    such as a `.zip`, `.tar`, `.iso`, container image, or virtual-machine
    snapshot—*and* the distributor has **not** already provided the notice
    required by § 13.1, **then** acceptance by conduct under § 13.1 arises **only
    if** the distributor satisfies **all** of the following:  

    1. **Root-Level License & Summary Files.**
        An unaltered plaintext (or Markdown) copy of **both**
       `LICENSE-CEL-1.00.md` **and** `SUMMARY-CEL-1.00.md`
        (or .txt variants) **must** appear in the root directory of the archive or
        image.

    2​.​ **Conspicuous Notice File.**  
        A plaintext file named `START_HERE.txt` (or equally conspicuous) must
        appear in the same directory, containing:  

    - (a) the sentence:  
        > “Use of any part of this software, model, or dataset is governed by the
        > ConsumerEconomy License (CEL-1.00). See LICENSE-CEL-1.00.md (or
        > LICENSE-CEL-1.00.txt), SUMMARY-CEL-1.00.md (or SUMMARY-CEL-1.00.txt) or
        visit:
        > https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md
        > https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md”  

      and  

    - (b) a clear instruction that opening, compiling, or executing any file
        constitutes acceptance of CEL-1.00.  

    3​.​ **No Obfuscation.**  
        Neither file may be compressed, encrypted, or buried within nested
        directories beyond the minimum necessary to comply with the chosen archive
        format.  

    4​.​ **Early Visibility.**  
        If the archive includes an automated installer or setup script, that
        program must—*before* performing any compilation or execution— display
        the same notice text and provide one-click paths to view **both**:

    - Full License: https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md

    - One-Page Summary: https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md”

    Failure to meet **all** of items 1–4 voids any claim that mere unpacking or
    mounting constitutes acceptance; in such cases the user remains unlicensed
    until the notice requirements of § 13.1 are fulfilled.  

- **13​.​3 Retail Physical-Media Sales (Optional 30-Day Refund)**  
    If You distribute the Work on a DVD, Blu-ray, USB stick, bundled textbook
    disc, or other *paid* physical medium **for which the recipient tenders
    monetary consideration**, You **must**:  

    (a) print, on the external packaging or shrink-wrap, a legible notice stating:  
    > “This disc contains software governed by the ConsumerEconomy License (CEL-1.00).  
    > See the one-page Summary** (`SUMMARY-CEL-1.00.md`) **and full text**  
    > (`LICENSE-CEL-1.00.md`) **before opening or use**.  
    > https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md
    > https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md
    > Opening the wrap or using the disc constitutes acceptance of CEL-1.00.  
    > If you do not agree, return the product within 30 days for a full refund.”;  

    (b) honour a **30-day refund** to any purchaser who (i) returns the physical
    medium in reasonable condition **and** (ii) certifies that they have not
    executed or copied the Work; and  

    (c) leave § 13.2 intact for any subsequent redistribution of an archive,
    image, or installer copied from that medium.  

    For avoidance of doubt, no refund is required where the Work is distributed
    **gratis**; in such cases, deletion of the Work constitutes rejection of the
    License.  

────────────────────────────────────────────────────────────────────────

14.  PRACTICAL TIPS FOR APPLYING CEL-1.00

────────────────────────────────────────────────────────────────────────

*(This section is **non-binding guidance**. Compliance duties themselves are found
in §§ 5 (Redistribution) and 13 (Acceptance). Nothing here changes CEL-1.00, but it
shows **how to let recipients choose “CEL-1.00 or any later version” under §
10.2**.)*  

- **14​.​1 Keep the Full License Handy**  
    Place unmodified copies of **both**  
    `[LICENSE-CEL-1.00.md](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md)`  
    **and**  
    `[SUMMARY-CEL-1.00.md](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md)`  
    in the top-level directory of your repository, archive,
    or distribution image **and add a separate plain-text file named `NOTICE`
    containing exactly**:  

    > This project is licensed under the ConsumerEconomy License  
    > **CEL Version 1.00 *or any later version***.  See  
    > – `[Full License](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md)`  
    > – `[One-Page Summary](https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md)`  

    Including the phrase “or any later version” in either the `NOTICE` file, your
    README, or the SCM release description fulfils § 10.2 and lets every recipient
    adopt a future CEL release when it appears.

- **14​.​2 Optional Short Header for Individual Files**  
    While not required, many developers find it useful to add a 4-line header to
    source files so the governing license is obvious even when a file is detached
    from the repo:  

    ```
    /*
    SPDX-License-Identifier: LicenseRef-CEL-1.00-or-later
    © [yyyy] [Author].
    For license text, see either
       • LICENSE‑CEL‑1.00.md, or
       • LICENSE‑CEL‑1.00.txt,
    or consult
      <https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/LICENSE-CEL-1.00.md>
      and
      <https://raw.githubusercontent.com/mirage335-colossus/ConsumerEconomyLicense/refs/heads/main/SUMMARY-CEL-1.00.md>.
    */
    ```

    Using the SPDX tag avoids ambiguity and keeps the header small. If you prefer a
    fuller header, adapt the example above, but **do not** delete the SPDX line—
    many build and audit tools rely on it.

- **14​.​3 When & How to Collect Assent**  
    CEL treats click-through acceptance (or the equivalents listed in § 13) as a
    **material condition**. Common patterns:  

    | Context                           | Where to show CEL-1.00 or a link to it                                        | Which action forms assent?                             |
    |-----------------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------|
    | Project using “or any later version” | `LICENSE-CEL-1.00.{md,txt}`, `SUMMARY-CEL-1.00.{md,txt}` + `NOTICE` file saying “…or any later version”  | Any act listed in § 13 **also** counts as assent to a later CEL if the user so chooses |
    | GitHub/GitLab repo                | `LICENSE-CEL-1.00.md`, `SUMMARY-CEL-1.00.{md,txt}` + link in README                                        | `git clone`, `gh release download`                     |
    | Download page                     | Adjacent “Download” button                                                     | Clicking the button                                    |
    | Docker / OCI image                | `LABEL license=LicenseRef-CEL-1.00` + link in README or Hub page              | `docker pull`                                          |
    | Physical media                    | External packaging (see § 13.3)                                                | Breaking the shrink-wrap                               |

    For customised installers, insert a scroll-box or hyperlink that the user must
    pass **before** compilation or first-run, per § 13.2(4).

- **14​.​4 Boiler-Plate ≠ Contract**  
    If you quote the cautionary sentence “You may not use this Work except in
    compliance with CEL-1.00”, make clear it is **descriptive only** and does not
    create extra obligations beyond CEL itself.  

────────────────────────────────────────────────────────────────────────

15.  APPENDIX A – CONSUMER-HARDWARE CRITERIA (CHI)

────────────────────────────────────────────────────────────────────────

A CHI must meet **all** of the following at time of deployment:

- **A-1​.​ Price Cap.**  
  - (a) Each primary AI accelerator must have had a first-retail list
  price ≤ USD 4 750; **and**  
  - (b) The complete system (chassis, CPU, RAM, storage, PSU, but
  excluding monitor / input devices) may cost at most **sixteen times
  (16 ×)** the combined accelerator list price.  

- **A-2​.​ Mass (per Licensed Instance, including power supply and all
  components necessary for operation):** ≤ 15 kg.
  For multi-tenant systems, the “effective mass” of a Licensed Instance
  = (Total mass of the host chassis, including its power supply) ×
  (CPU cores allocated to that instance ÷ total CPU cores on the host).  

  **Purpose:** This limit ensures that any hardware qualifying as
  “consumer-grade” remains hand-portable by a single person without
  specialized equipment, in line with common carry-on and ergonomic
  thresholds.  

- **A-3​.​ Availability:** continuously listed for sale to the public on
  at least two global e-commerce sites (e.g., Amazon, eBay) for ≥ 60 days
  preceding deployment.  

- **A-4​.​ Category:** at the time You acquire it, the primary
  GPU/accelerator is marketed by the vendor as “desktop”, “laptop”, or
  “gaming” and **not** as “data-centre”, “enterprise”, “workstation”,
  “server”, “wafer-scale”, or similar. Subsequent vendor re-labelling does
  not retroactively disqualify hardware that is already Grandfathered, but
  no additional units of that SKU may be added after the re-labelling
  date.  

- **A-5​.​ Die Size:** < 3.0 × the die size of the contemporary top-end
  consumer GPU or similar consumer AI compute hardware.  

- **A-6​.​ DIY Manufacturability Exception:** A non-CHI device may be used
  only if its complete manufacturing tooling, firmware, and masks are
  FLOSS-licensed and can be replicated in < 2 person-weeks with equipment
  costing < USD 300 000, available in ≥ 20 open makerspaces world-wide,
  **of which at least five (5) must be located within the European Union.**  

- **A-7​.​ CPU & Memory Latitude:**  
    Use of server-grade CPUs (e.g., AMD EPYC, Intel Xeon) and/or system
    memory > 128 GiB **does not** by itself disqualify an instance,
    provided that:  
    - (i) the accelerator(s) still satisfy A-1 through A-5; and  
    - (ii) when the licensed model is benchmarked under identical
      accelerator settings, tokens-per-second throughput is
      ≤ 5 × higher than on a reference setup using the same
      accelerator(s) but a consumer desktop CPU and 128 GiB RAM.  

    **Rationale:** inference throughput is overwhelmingly GPU-bound; extra
    CPU cores or RAM allocated for virtualisation, batching, or
    multi-tenancy are therefore tolerated so long as they do not confer
    an approximately more than ten-times (5 ×) compute-throughput edge
    over ordinary consumer rigs.  

- **A-8​.​ Public-Retail Availability (Grandfathering Gate):**  
    An accelerator may become part of a Grandfathered CHI **only if** it
    had been openly offered for purchase to the general public—through at
    least two self-service retail channels—for a continuous period of
    **≥ 60 calendar days** *before* Your first production deployment.
    Devices that enter “paper launch” or marketing re-labelling phases
    without satisfying this 60-day retail window are **ineligible** for
    grandfathering.  

Once a system qualifies, it becomes a **Grandfathered CHI** and remains
compliant even if MSRP, die size, or marketing categories change later.  

“Wafer-scale” means a single packaged device larger than 2250 mm².  

────────────────────────────────────────────────────────────────────────

16.  APPENDIX B – ALLOWED PROPRIETARY MODELS (STATIC SNAPSHOT)

────────────────────────────────────────────────────────────────────────

Allowed (subject to § 6.3):  
  - Codex Mini  
  - o3-pro  
  - o3  
  - o1  
  - o1-pro  
  - o4-mini-high  
  - GPT-4.5 (RESEARCH PREVIEW)  

The above list is _exhaustive_. A future OpenAI successor may be used **only** if
it is of **similar or greater** capability; models of _lesser_ capability may
**not** be substituted simply to outsource compute.  

Disallowed (non-exhaustive):  
  - GPT-4o, GPT-4o (extended), GPT-4o-mini, GPT-4o Search Preview,
    GPT-4o-mini Search Preview  
  - GPT 4.1, GPT 4.1-mini, GPT 4.1-Nano  
  - GPT-4, GPT-4 32k, GPT-4 Turbo  
  - GPT-3.5 Turbo, GPT-3.5 Turbo Instruct, GPT-3.5 Turbo 16k  
  - o1-mini  
  - Any model not operated by OpenAI or marketed primarily for enterprise or
    data-centre deployment.  

Escalation is expected to usually involve the most diverse problems, benefitting
very strongly from models which not only fill the cross-validity testing
pitfalls of capability benchmarks rather well, but which allocate adequately
large, diversely trained, models, with unabbreviated inputs. Thus, only the
most generally capable models (eg. o3-pro, o3) or the most capable expert (eg.
Codex Mini), if any model is used for escalation, should be used. OpenAI has
these models, and open-weights alternatives such as DeepSeek-R1 0527 671b, Llama
3.1 Nemotron Ultra 253b v1, are not far behind.  

Before a closed-weights model from a provider other than OpenAI has become
relatively useful for such diverse problem solving, it is expected such
escalation will no longer be necessary or worthwhile, rather instead the
capabilities of such closed-model providers will have diverged even further
from software under this license. As such escalation will rarely if ever be at
all desirable, separate services will be used for their separate purposes.  

(No automatic updates. Changes require a new CEL version or written Author
consent per § 6.3(a)(i).)  

────────────────────────────────────────────────────────────────────────

17.  APPENDIX C – HARDWARE-INTEGRITY PROOFS

────────────────────────────────────────────────────────────────────────

- **C​‑1.​ Publication Requirement (Services > 25 000 MAU).**  
    For every CHI in a Service that has crossed the 25 000-MAU threshold, the
    operator **must publish**, in a publicly reachable location:  

    - manufacturer, model, and public SKU;  
    - factory serial number; and  
    - date placed in service.  

    ***Mandatory-Privacy Fallback.***  
    Only where publication of the serial **would unavoidably violate mandatory
    statutory privacy law in the jurisdiction of operation** may the operator
    instead:  

    - (a) publish an irreversible SHA-256 hash of (serial ∥ PCI ID ∥ salt)
      **and**  
    - (b) supply the plaintext serial, under confidentiality, to an
      **Independent Hardware-Compliance Auditor** appointed by the Ombudsperson
      pursuant to Appendix D-5.  

    The Auditor publishes a redacted compliance certificate.  

    Failure to follow either the full-publication path **or**, where permitted,
    the hash + auditor path is a **material breach of this License and of the
    Service Covenant in § 6.4**, immediately triggering the suspension and
    termination mechanisms in § 11 unless cured as provided therein.  

- **C​‑2.​ Due-Diligence Record-Keeping (Services ≤ 25 000 MAU).**  
    Operators that have **never** exceeded 25 000 MAU need **not** publish the
    data in C‑1. They must, however, retain for two (2) years reasonable
    evidence of compliance—e.g., output from `lspci`, `nvidia-smi`, pricing-page
    screenshots, or rental invoices—and supply it to the Author within 45
    business days of a written request.  

- **C​‑3.​ Host Non-Cooperation.**  
    If a hosting contract **forbids** disclosure of factory serial numbers (and
    publication is _not_ prohibited by mandatory law), an operator that has
    crossed the 25 000-MAU threshold must, within 30 days of crossing, either:  

    - (a) migrate the workload to infrastructure that permits compliance with C‑1;
      **or**  
    - (b) scale the Service back below 25 000 MAU and remain there.  

    Failure to do so is a **material breach of this contract (and therefore a
    violation of the Service Covenant in § 6.4) in addition to any copyright-
    license termination that may apply.**  

────────────────────────────────────────────────────────────────────────

18.  APPENDIX D – AI-ASSISTED ARBITRATION

────────────────────────────────────────────────────────────────────────

- **D​.​1. Scope**  
    Applies only to Services exceeding 25 000 MAU. Such operators **must**
    resolve all disputes arising under this License by the arbitration procedure
    below, **unless** (a) the operator is a “consumer” under mandatory law, in
    which case local-court rights prevail, **or** (b) the parties agree in
    writing, after the dispute arises, to litigate in the forum stated in § 12.  

- **D​.​2. Panel**  
    One human chair selected by the Ombudsperson plus two independent
    **open-weights** LLMs chosen from **Appendix E – Approved Evaluation Models**
    (version hashes fixed for the proceeding).  

- **D​.​3. Procedure**  
    Parties submit briefs; LLMs produce reasoned drafts; human chair reviews for
    coherence and bias; final decision issued within 45 days, enforceable as an
    arbitration award.  

- **D​.​4. Remedy**  
    Violations may be cured; license suspension lasts until the panel confirms
    compliance. Repeated breach-cure cycling is a continuing breach.  

- **D​.​5. Independent Hardware-Compliance Auditors**  
    - (a) **Designation**  
      Within fifteen (15) days after a Service first exceeds the 25 000‑MAU
      threshold in § 6.4, the Ombudsperson shall review credentials and
      designate one or more **Independent Hardware-Compliance Auditor(s)** for
      purposes of Appendix C‑1. If the Ombudsperson has not yet been appointed,
      the Service operator must cooperate in good faith to secure such
      appointment within the same fifteen-day window.  

    - (b) **Independence Criteria**  
      An auditor must  
      - (i) be a natural person or legally recognised firm with demonstrable
        expertise in accelerator-hardware forensics;  
      - (ii) have no financial interest in, nor governance relationship with,
        the Service operator, the Author, or their respective Affiliates, other
        than the audit engagement itself; and  
      - (iii) execute a confidentiality agreement that allows disclosure only
        of the compliance certificate described in paragraph (d).  

    - (c) **Operator Cooperation**  
      Within a further fifteen (15) days of the auditor’s designation, the
      Service operator shall provide the auditor with serial numbers, hash
      salts, purchase documentation, and—on reasonable request—remote console
      or on-site access sufficient to verify Appendix A compliance.  

    - (d) **Compliance Certificate**  
      The auditor shall issue a signed **Compliance Certificate** identifying
      each audited CHI by serial number or hash and stating whether it
      satisfies Appendix A. The certificate must be posted at the public URL
      used for Appendix C‑1 disclosure no later than thirty (30) days after
      completion of the audit inspection.  

    - (e) **Costs**  
      Auditor fees and reasonable expenses are borne by the Service operator.  

    - (f) **Appeal**  
      Either the Author or the Service operator may, within thirty (30) days
      after publication, appeal the auditor’s determination to an Appendix D
      arbitration panel, which will review the record for clear error.  

────────────────────────────────────────────────────────────────────────

19.  APPENDIX E – APPROVED EVALUATION MODELS (OPEN-WEIGHTS – STATIC)

────────────────────────────────────────────────────────────────────────

Only the Large Language Models listed below may be relied upon for any
**“LLM evaluation”** mentioned in CEL-1​.00. These models are **open-weights**
rather than FLOSS, and are deemed sufficiently redistributable — _for so long
as each model continues to be widely regarded as legally redistributable at
the time of use_. They are also considered capable of detecting
license-spirit violations when prompted in good faith.  

- Llama 3.1 Nemotron Ultra 253 B v1  
- Llama 3.1 405 B  
- DeepSeek-R1 0528 (671 B parameters)  
- Phi-4-reasoning-plus 14 B  
- Magistral-Small-2506  
- EleutherAI GPT-NeoX-20B (hf.co/EleutherAI/gpt-neox-20b)  

Use of any other model—or a materially modified checkpoint or tokeniser—has
**no evidentiary weight** for purposes of this license unless the Author
expressly approves the substitution in writing.  

(Static. Revisions require a new CEL version.)  

────────────────────────────────────────────────────────────────────────

20.  CC-BY-SA & SIMILAR SHARE-ALIKE MATERIAL

────────────────────────────────────────────────────────────────────────

If You adapt or transform any portion of the Work that is separately licensed
under CC-BY-SA 4.0 (or a functionally equivalent share-alike license), You
**must** release that *adapted portion* under CC-BY-SA 4.0 unchanged and without
the additional CEL Hardware or Service Covenants. The remaining, independently
authored portions of Your Derivative Work may remain under CEL so long as the
CC-BY-SA material can be *reasonably and independently extracted* and used under
CC-BY-SA 4.0 alone.  

────────────────────────────────────────────────────────────────────────

21.  LICENSE-TEXT INTEGRITY & NAMING

────────────────────────────────────────────────────────────────────────

- **21​.​1 Derivative Versions Must Be Renamed.**  
    The canonical text of CEL-1.00 is © 2025 [Author]. You **may** copy or create
    derivative versions of this License **provided that** every such version:  
    - (a) is stored in a file whose primary name **does _not_ contain** the
      string "`CEL-1.00`", "`CEL 1.00`", or "`ConsumerEconomy License`"; **and**  
    - (b) bears, within its first five visible lines, the exact phrase
      **"UNOFFICIAL MODIFIED TEXT — NOT CEL-1.00"**.  

- **21​.​2 No Waiver or Substitution.**  
    Circulating or citing any such derivative text **does not** waive, vary, or
    substitute the obligations that CEL-1.00 imposes on any copy of the *Work*.
    Only a later CEL version adopted under § 10 can affect those obligations.  

- **21​.​3 Reserved File-Names.**  
    Distributing, or making publicly retrievable, a file named  
    **`LICENSE-CEL-1.00.*`**, **`SUMMARY-CEL-1.00.*`**, **or**  
    **`CONSUMERECONOMY-LICENSE-1.00.*`** that is *not* byte-for-byte identical  
    (per § 22 end-of-line-equivalence) to the authoritative digest(s) is a  
    **material breach** of this License,
    triggering the suspension-and-termination mechanism of § 11.  

- **21​.​4 Citation Safe-Harbour Unaffected.**  
    The Q&A Safe-Harbour in § 5.8 continues to permit verbatim excerpts of
    CEL-1.00, even inside a derivative license text, so long as the excerpt itself
    remains unchanged.  

────────────────────────────────────────────────────────────────────────

22.  CRYPTOGRAPHIC AUTHENTICITY

────────────────────────────────────────────────────────────────────────

- **22​.​1 Official Digest.**  
    The canonical UTF-8 text of this license—with UNIX LF line-endings and
    **excluding every line that consists solely of a 64-hex-digit digest**—
    produces the following SHA-256 hash:  

      8e73a57be252eb7fff2c0411688b28c0db5ba606c89dd2ac5a602bf25fb4978d

- **22​.​1-bis Alternative Windows Digest.**  
    The same UTF-8 text, with DOS/Windows **CR LF** line endings, **excluding
    every line that consists solely of a 64-hex-digit digest**— produces the
    following SHA-256 hash:  

      19d527154b54cc6fbff78411315f86695a936673d286101173288cb3b4e3a71e

    A copy that matches **either** digest above is an authoritative copy of
    **CEL-1.00**.  

- **22​.​2 Reproduce the hash.**  
    On any POSIX shell:  

    ```bash
    # compute LF and CRLF digests from the same source file

    # adjust if your file uses .txt
    file="LICENSE-CEL-1.00.md"

    # LF (canonical, like § 22.1)
    grep -vE '^[[:space:]]*[0-9a-f]{64}[[:space:]]*$' "$file" \
      | sha256sum | awk '{print "LF  : "$1}'

    # CRLF (Windows alternative, § 22.1-bis)
    grep -vE '^[[:space:]]*[0-9a-f]{64}[[:space:]]*$' "$file" \
      | sed 's/$/\r/' \
      | sha256sum | awk '{print "CRLF: "$1}'
    ```

    If your source file already contains CRLF endings, run `dos2unix` or
    `tr -d '\r'` first to reproduce the LF hash.  

- **22​.​3 Authoritative Copy.**  
    So long as SHA-256 remains cryptographically secure and no distinct text
    shares either digest in §§ 22.1 or 22.1-bis, any copy of CEL-1.00 that
    hashes to one of those values is conclusively authoritative. Copies that
    fail to match either digest are not CEL-1.00.  

- **22​.​4 Future Versions.**  
    Each later CEL release MUST embed its own official digest(s). Any material
    change outside § 22 triggers a new version number and new digest(s).  

────────────────────────────────────────────────────────────────────────

────────────────────────────────────────────────────────────────────────

END OF CONSUMERECONOMY LICENSE VERSION 1.00

────────────────────────────────────────────────────────────────────────
