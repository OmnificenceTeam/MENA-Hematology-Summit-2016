<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PreRead.aspx.cs" Inherits="PreRead" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="no-js" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Pre-Read MHS 2016</title>
    <meta content="width=device-width" name="viewport" />
    <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />
    <link rel="stylesheet" media="all" href="assets/css/application.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/bootstrap-custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom-modal.css" />
    <link rel="stylesheet" media="all" href="assets/css/common.css" />
    <script src="assets/js/modernizr-2.8.3.min.js"></script>
	 <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-76807941-1', 'auto');
        ga('send', 'pageview');

</script>
</head>
<body style="overflow:auto;" >
    <header class="main-header">
        <div class="city-toggle-wrap">
            <div class="cols">
                <div class="col-12">
                    <a class="city-toggle" href="#" id="city-toggle">MENU
                        <span class="menu">
                            <i></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </header>
    <div class="hero other-pages">
        <div class="img-wrap app-logo-1">
            <img alt="MENA 2016" src="assets/images/logo_in.png" />
        </div>
    </div>
    <div class="cols">
        <div class="col-12">
            <div class="logo app-logo-2">
                <img alt="MENA 2016" src="assets/images/logo_in.png" />
            </div>
        </div>
    </div>
    <br />
    <br class="extra-br" />
    <div class="social-separator banner-bg" style="background-image: url('assets/images/pre_read.jpg');margin-top: 20px;">
        <div class="cols">
            <nav class="home-city-nav">
                <div class="city-nav-wrap" style="padding: 0px;">
                    <ul class="cities" style="padding-top: 0px;">
                        <li class="pull-right">
                            <a class="city" href="#" style="cursor: default;">
                                <img alt="OnlineCME" src="assets/images/transparent.png" class="banner-title-container" />
                                <div class="name name-letter-space with-sub-text banner-title">
                                    <span>PRE-READ</span><br />
                                </div>
                                <div class="bg" style="opacity: 0;"></div>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <div class="cols">
        <nav class="home-city-nav">
            <a class="choose scroll-to custom-choose cursor_Pntr " data-offset="45" data-target="#city-nav-wrap" href="#">ABSTRACTS
               <%-- <img src="assets/images/pdf.png" style="width: 40px; margin-bottom: 8px;" />--%>
            </a>
        </nav>
    </div>
    <br />
    <br />
    <br />
   <div class="cols">
        <div class="cols-12">
            <div>
                    <table style="width:100%;height:40px;">
                    <tr>
                        <td id="cml" class="prefirstdiv" onclick="tab(1)">CML</td>
                        <td id="iol" class="prefirstdiv" onclick="tab(2)">IOL</td>
                        <td id="itp" class="prefirstdiv" onclick="tab(3)">ITP</td>
                        <td id="mf" class="prefirstdiv" onclick="tab(4)">MF</td>
                        <td id="pv" class="prefirstdiv" onclick="tab(5)">PV</td>
                    </tr>
                </table>
        </div>
            <br /><div class="panel-group" id="accordion">
                
              
                <div id="cml_div" class="displaydiv" style="display:block;">
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse1">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                European LeukemiaNet recommendations for the management of chronic myeloid leukemia: 2013                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Advances in chronic myeloid leukemia treatment, particularly regarding tyrosine kinase inhibitors, mandate regular updating of concepts and management. A European LeukemiaNet expert panel reviewed prior and new studies to update recommendations made in 2009. We recommend as initial treatment imatinib, nilotinib, or dasatinib. Response is assessed with standardized real quantitative polymerase chain reaction and/or cytogenetics at 3, 6, and 12 months. BCR-ABL1 transcript levels ≤10% at 3 months, <1% at 6 months, and ≤0.1% from 12 months onward define optimal response, whereas>
                                            10% at 6 months and >1% from 12 months onward define failure, mandating a change in treatment. Similarly, partial cytogenetic response (PCyR) at 3 months and complete cytogenetic response (CCyR) from 6 months onward define optimal response, whereas no CyR (Philadelphia chromosome–positive [Ph+] >95%) at 3 months, less than PCyR at 6 months, and less than CCyR from 12 months onward define failure. Between optimal and failure, there is an intermediate warning zone requiring more frequent monitoring. Similar definitions are provided for response to second-line therapy. Specific recommendations are made for patients in the accelerated and blastic phases, and for allogeneic stem cell transplantation. Optimal responders should continue therapy indefinitely, with careful surveillance, or they can be enrolled in controlled studies of treatment discontinuation once a deeper molecular response is achieved.
                                            <br /><p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.bloodjournal.org/content/122/6/872?sso-checked=true');">
http://www.bloodjournal.org/content/122/6/872?sso-checked=true
</span> </p>
</div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse2">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">
                                            <div class="Pre_Txt_Close">Achievement and Maintenance Of Deeper Molecular Response By Switching To Nilotinib In Patients (pts) With Chronic Myeloid Leukemia In Chronic Phase (CML-CP) With Residual Disease On Long-Term Imatinib: ENESTcmr 36-Month Follow-Up</div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse2" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Introduction:</b> The 12- and 24-mo results of the Evaluating Nilotinib Efficacy and Safety in clinical Trials–complete molecular response (ENESTcmr) trial showed that pts with CML-CP with minimal residual disease after ≥ 2 y on imatinib achieved deeper molecular responses with switch to nilotinib. Results from ENESTcmr with 36-mo follow-up will be presented.<br />
                                        <b>Methods:</b> Pts with Philadelphia chromosome–positive (Ph+) CML-CP who had achieved complete cytogenetic response (CCyR) but had detectable BCR-ABL after ≥ 2 y on imatinib were included. Pts (N = 207) were randomized 1:1 to continue the same dose of imatinib (400 or 600 mg once daily [QD]; n = 103) or switch to nilotinib 400 mg twice daily (BID; n = 104). Rates of major molecular response (MMR; BCR-ABL ≤ 0.1% according to the International Scale [IS]) and MR4.5 (BCR-ABLIS ≤ 0.0032%) were evaluated by real-time quantitative polymerase chain reaction (RQ-PCR). Confirmed undetectable BCR-ABL was measured by RQ-PCR with a sensitivity of ≥ 4.5 logs, confirmed with a sensitivity of at least 4 logs in the next sample. Predictors of response were evaluated by multivariate logistic regression. Pts receiving imatinib were allowed to cross over to nilotinib if they had not achieved confirmed undetectable BCR-ABL by 24 mo or if they experienced treatment failure or confirmed loss of undetectable BCR-ABL at any time.<br />
                                        <b>Results:</b> By 24 mo, 77% of pts in the nilotinib arm and 91% in the imatinib arm remained on study treatment. Discontinuation rates were comparable between arms during year 2; 7% and 5% of pts discontinued study treatment in the nilotinib and imatinib arms, respectively, between years 1 and 2. Three pts crossed over to nilotinib before 24 mo; the no. of pts who crossed over at or after 24 mo will be presented. By 24 mo, more pts in the nilotinib arm achieved confirmed undetectable BCR-ABL compared with imatinib (22.1% vs 8.7%; P = .0087). Regardless of molecular response at study start, more pts in the nilotinib arm than the imatinib arm achieved MR4.5 by 24 mo. None of the pts in the imatinib arm who lacked MMR at study start achieved confirmed MR4.5 or confirmed undetectable BCR-ABL by 24 mo (vs 20.8% and 16.7% in the nilotinib arm, respectively). Twice as many pts achieved and maintained MR4.5 in 3 consecutive assessments in the nilotinib vs imatinib arm (n = 12 vs 6). Age, sex, BCR-ABL level at study start, duration of prior imatinib (≤ 36 mo vs > 36 mo), and prior interferon were analyzed as predictors of response in univariate and multivariate analyses. None of these was clearly predictive of achieving MR4.5 or undetectable BCR-ABL in multivariate logistic regression. No cases of progression to accelerated phase/blast phase were observed with 24 mo follow-up. Three pts in the imatinib arm had confirmed loss of CCyR vs 0 in the nilotinib arm.<br />
                                        <b> Conclusions:</b> Switching to nilotinib continues to induce deeper molecular responses in pts with minimal residual disease on long-term imatinib therapy. More pts achieved confirmed undetectable BCR-ABL in the nilotinib arm vs the imatinib arm, with the difference between arms increasing between 12 and 24 mo and notably marked in pts lacking MMR at study start. Maintenance of deeper molecular responses achieved with nilotinib therapy may enable more pts to benefit from treatment-free remission trials.<br />
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.bloodjournal.org/content/122/21/94');">http://www.bloodjournal.org/content/122/21/94</span> </p>

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse3">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">
                                            <div class="Pre_Txt_Close">Long-term benefits and risks of frontline nilotinib vs imatinib for chronic myeloid leukemia in chronic phase: 5-year update of the randomized ENESTnd trial</div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse3" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        In the phase 3 Evaluating Nilotinib Efficacy and Safety in Clinical Trials–Newly Diagnosed Patients (ENESTnd) study, nilotinib resulted in earlier and higher response rates and a lower risk of progression to accelerated phase/blast crisis (AP/BC) than imatinib in patients with newly diagnosed chronic myeloid leukemia in chronic phase (CML-CP). Here, patients’ long-term outcomes in ENESTnd are evaluated after a minimum follow-up of 5 years. By 5 years, more than half of all patients in each nilotinib arm (300 mg twice daily, 54%; 400 mg twice daily, 52%) achieved a molecular response 4.5 (MR4.5; BCR-ABLless than or equal to0.0032% on the International Scale) compared with 31% of patients in the imatinib arm. A benefit of nilotinib was observed across all Sokal risk groups. Overall, safety results remained consistent with those from previous reports. Numerically more cardiovascular events (CVEs) occurred in patients receiving nilotinib vs imatinib, and elevations in blood cholesterol and glucose levels were also more frequent with nilotinib. In contrast to the high mortality rate associated with CML progression, few deaths in any arm were associated with CVEs, infections or pulmonary diseases. These long-term results support the positive benefit-risk profile of frontline nilotinib 300 mg twice daily in patients with CML-CP.<br />
                                       <br /><p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.nature.com/leu/journal/vaop/ncurrent/full/leu20165a.html');">http://www.nature.com/leu/journal/vaop/ncurrent/full/leu20165a.html</span>
</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="iol_div" class="displaydiv">
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse4">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">
                                            <div class="Pre_Txt_Close">
                                             
                                                Tailoring iron chelation by iron intake and serum ferritin: the prospective EPIC study of deferasirox in 1744 patients with transfusion-dependent anemias
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse4" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Following a clinical evaluation of deferasirox (Exjade®) it was concluded that, in addition to baseline body iron burden, ongoing transfusional iron intake should be considered when selecting doses. The 1-year EPIC study, the largest ever investigation conducted for an iron chelator, is the first to evaluate whether fixed starting doses of deferasirox, based on transfusional iron intake, with dose titration guided by serum ferritin trends and safety markers, provides clinically acceptable chelation in patients (aged ≥2 years) with transfusional hemosiderosis from various types of anemia.<br />
                                        <b>Design and Methods:</b> The recommended initial dose was 20 mg/kg/day for patients receiving 2–4 packed red blood cell units/month and 10 or 30 mg/kg/day was recommended for patients receiving less or more frequent transfusions, respectively. Dose adjustments were based on 3-month serum ferritin trends and continuous assessment of safety markers. The primary efficacy end-point was change in serum ferritin after 52 weeks compared with baseline.<br />
                                        <b>Results:</b> The 1744 patients enrolled had the following conditions; thalassemia (n=1115), myelodysplastic syndromes (n=341), aplastic anemia (n=116), sickle cell disease (n=80), rare anemias (n=43) and other transfused anemias (n=49). Overall, there was a significant reduction in serum ferritin from baseline (−264 ng/mL;P<0.0001), reflecting dosage adjustments and ongoing iron intake. the most common (>
                                            5%) adverse events were gastrointestinal disturbances (28%) and skin rash (10%).<br />
                                            <b>Conclusions:</b> Analysis of this large, prospectively collected data set confirms the response to chelation therapy across various anemias, supporting initial deferasirox doses based on transfusional iron intake, with subsequent dose titration guided by trends in serum ferritin and safety markers.<br />
                                          <p class="P_wrdrap">Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2857545/');">http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2857545/</span></p>

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse5">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">
                                            <div class="Pre_Txt_Close">Efficacy and safety of deferasirox, an oral iron chelator, in heavily iron-overloaded patients with β-thalassaemia: the ESCALATOR study</div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse5" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Objective:</b> Many patients with transfusional iron overload are at risk for progressive organ dysfunction and early death and poor compliance with older chelation therapies is believed to be a major contributing factor. Phase II/III studies have shown that oral deferasirox 20–30 mg/kg/d reduces iron burden, depending on transfusional iron intake.<br />
                                        <b>Methods:</b> The prospective, open-label, 1-yr ESCALATOR study in the Middle East was designed to evaluate once-daily deferasirox in patients ≥2 yr with β-thalassaemia major and iron overload who were previously chelated with deferoxamine and/or deferiprone. Most patients began treatment with deferasirox 20 mg/kg/d; doses were adjusted in response to markers of over- or under-chelation. The primary endpoint was treatment success, defined as a reduction in liver iron concentration (LIC) of ≥3 mg Fe/g dry weight (dw) if baseline LIC was ≥10 mg Fe/g dw, or final LIC of 1–7 mg Fe/g dw for patients with baseline LIC of 2 to <10 mg fe />g dw.<br />
                                        <b>Results:</b> Overall, 233/237 enrolled patients completed 1 yr’s treatment. Mean baseline LIC was 18.0 ± 9.1 mg Fe/g dw, while median serum ferritin was 3356 ng/mL. After 1 yr’s deferasirox treatment, the intent-to-treat population experienced a significant treatment success rate of 57.0% (P = 0.016) and a mean reduction in LIC of 3.4 mg Fe/g dw. Changes in serum ferritin appeared to parallel dose increases at around 24 wk. Most patients (78.1%) underwent dose increases above 20 mg/kg/d, primarily to 30 mg/kg/d. Drug-related adverse events were mostly mild to moderate and resolved without discontinuing treatment.<br />
                                        <b>Conclusions:</b> The results of the ESCALATOR study in primarily heavily iron-overloaded patients confirm previous observations in patients with β-thalassaemia, highlighting the importance of timely deferasirox dose adjustments based on serum ferritin levels and transfusional iron intake to ensure patients achieve their therapeutic goal of maintenance or reduction in iron burden.<br />
                                        <p class="P_wrdrap">Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2730551/');">http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2730551/</span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse6">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">
                                            <div class="Pre_Txt_Close">Deferasirox–Deferoxamine Combination Therapy Reduces Cardiac Iron With Rapid Liver Iron Removal In Patients With Severe Transfusional Iron Overload (HYPERION)</div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse6" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Transfusion-dependent patients with severe cardiac siderosis often require intensive iron chelation therapy for a limited time to facilitate rapid removal of iron from the heart, allowing patients to move from a high-risk (cardiac T2*<10 ms) to lower risk (≥10 ms) status for heart failure. Oral deferasirox (DFX) monotherapy has been shown to improve cardiac T2*, but data on the combined use of DFX and deferoxamine (DFO) are limited.<br/>
<b>Aim:</b> To evaluate efficacy and safety of investigational DFX–DFO in combination followed by DFX monotherapy in patients with severe transfusional cardiac siderosis.<br/>
<b>Methods:</b> The prospective, Phase II, open-label, multinational HYPERION study evaluated DFX–DFO in combination followed by DFX monotherapy in transfusion-dependent patients with severe cardiac siderosis (NCT01254227). Patients enrolled were ≥10 years with CMR-measured cardiac T2* 5–<10 ms, left ventricular ejection fraction (LVEF) ≥56%, R2-MRI liver iron concentration (LIC) ≥7 mg Fe/g dw. Starting dose was DFX 20 mg/kg/d, 7 d/wk, plus DFO 40 mg/kg/d, 5 d/wk for ≥8 hrs/d. DFX dose could be increased to 30 and 40 mg/kg/d after Month 1 and 6, respectively. Patients achieving cardiac T2* ≥10 ms and a relative T2* increase of ≥10% from baseline (BL) any time after 6 months were switched to DFX monotherapy. Combination therapy was resumed if cardiac T2* fell to <10 ms with a relative decrease of ≥10% from previous T2* value. Dose adjustments were based on efficacy and safety parameters. Primary efficacy endpoint was change in geometric mean cardiac T2* at Month 12 divided by that at BL. A key secondary objective was the proportion of patients achieving T2* ≥10 ms and a ≥10% relative increase from BL after 6 and 12 months. Efficacy was analyzed for all evaluable patients in the full analysis set (FAS) who received ≥1 dose of study drug and had a BL and post-BL assessment; cardiac T2* is also reported for patients with T2* at BL and Month 12 (12-month completers).<br/>
<b>Results:</b> 60 patients were enrolled (59 β-thalassemia major, 1 Diamond–Blackfan anemia; mean age 22.8 years; 46.7% male) with severe iron overload (geometric mean [Gmean] cardiac T2* 7.03 ms, mean LIC 33.4 ± 14.5 mg Fe/g dw, median serum ferritin 5551 ng/mL [range 1163, 11,317]). Overall, 20 patients discontinued; 5 consent withdrawals, 4 adverse events (AEs: pruritus, arthritis, abdominal pain, drug rash with eosinophilia and systemic symptoms), 4 abnormal test procedure results (all T2* <5 ms), 4 lost to follow-up, 2 administrative problems, 1 death (central nervous system infection, suspected relationship to DFO). Mean dose was DFX 29.6 ± 6.3, 7 d/wk, and DFO 37.4 ± 5.8 mg/kg/d, 5 d/wk. In the evaluable FAS (n=52, last observation carried forward) cardiac T2* increased 9% and LIC decreased 46%; serum ferritin levels decreased by 2174 ng/mL (–6138, 1570). Among 12-month completers (n=36), cardiac T2* increased from 7.24 at BL to 8.24 ms (14% improvement). In patients with BL LIC <30 and ≥30 mg Fe/g dw, cardiac T2* improvement was 17% (7.85 to 9.15 ms, n=16) and 6% (6.69 to 7.11 ms, n=36), respectively. Overall, 12.5 and 19.2% of patients achieved T2* ≥10 ms and ≥10% relative increase from BL at Month 6 and 12, respectively. Mean LVEF remained stable and no patient had cardiac failure. AEs with suspected relationship to study drug (≥5%) were abdominal pain, nausea (both 6.7%); increased blood creatinine, diarrhea, increased urine protein/creatinine ratio (all 5.0%). 1 patient had serum creatinine >33% increase from BL and >upper limit of normal at 2 consecutive visits.<br/>
<b>Discussion:</b> Cardiac T2* improved during 12 months of treatment with DFX–DFO in patients with severe transfusional body iron burden. High BL LIC levels decreased considerably with DFX–DFO. Overall, as LIC decreased cardiac T2* increased, most notably after 6 months. The higher DFX dose permitted after Month 6 possibly influenced this trend. Cardiac T2* improvements were observed irrespective of BL LIC value, but were most marked in those with BL LIC <30 mg Fe/g dw, consistent with previous data showing that cardiac iron removal follows liver iron removal (Noetzli Blood 2008). Safety of DFX–DFO was consistent with established monotherapy profiles, with no unexpected findings. 2-year follow-up for HYPERION will evaluate the impact of longer-term DFX–DFO in combination on liver and cardiac iron removal.<br/>
<p class="P_wrdrap">Read More at: <span class="readmore" onclick="askConf('http://www.bloodjournal.org/content/122/21/2257');">http://www.bloodjournal.org/content/122/21/2257</span></p>


                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse7">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">New insights into transfusion-related iron toxicity: Implications for the oncologist.</div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse7" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Iron overload is a potentially life-threatening consequence of multiple red-blood-cell transfusions. Here, we review factors affecting excess iron distribution and its damage to specific tissues, as well as mechanisms of oncogenesis by iron. Although consequences of transfusional iron overload are best described in thalassemia major and related inherited anemias, they are increasingly recognized in acquired conditions, such as myelodysplastic syndromes (MDS). Iron overload in MDS not only impacts on certain tissues, but may affect the clonal evolution of MDS through generation of reactive oxygen species. Iron overload may also influence hematopoietic-stem-cell-transplantation outcomes. Novel MRI methods for assessing body iron have impacted significantly on outcome in inherited anemias by allowing monitoring of iron burden and iron chelation therapy. This approach is increasingly being used in MDS and stem-cell-transplant procedures. Knowledge gained from managing transfusional iron overload in inherited anemias may be translated to general oncology, with potential for improved patient outcomes.<br />
                                        <p class="P_wrdrap">Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pubmed/26806144');">http://www.ncbi.nlm.nih.gov/pubmed/26806144</span></p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse8">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">Safety and efficacy of 4 years of deferasirox treatment for sickle cell disease patients</div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse8" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Deferasirox (DFRA) is a novel oral chelator agent for treatment of iron overload. Although well established in the treatment of β-thalassemia major (β-TM), it has not yet been fully investigated in patients with sickle cell disease. The aim of this report is to present the preliminary results of a pilot study assessing the effect of 4 years of DFRA treatment in six patients with sickle cell disease who are in need of recurrent transfusions. Our results show a significant reduction of ferritin levels and improvement of liver hemosiderosis, assessed by means of magnetic resonance imaging T2* (MRI T2*). None of the patients presented any serious adverse effects and the treatment was well tolerated. These results are in accordance with previous studies about the use of DFRA in sickle cell disease.<br />
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pubmed/23215738');">
http://www.ncbi.nlm.nih.gov/pubmed/23215738
</span> </p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse9">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Optimising iron chelation therapy with deferasirox for non-transfusion-dependent thalassaemia patients: 1-year results from the THETIS study
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse9" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       Efficacy and safety of iron chelation therapy with deferasirox in iron-overloaded non-transfusion-dependent thalassaemia (NTDT) patients were established in the THALASSA study. THETIS, an open-label, single-arm, multicentre, Phase IV study, added to this evidence by investigating earlier dose escalation by baseline liver iron concentration (LIC) (week 4: escalation according to baseline LIC; week 24: adjustment according to LIC response, maximum 30 mg/kg/day). The primary efficacy endpoint was absolute change in LIC from baseline to week 52. 134 iron-overloaded non-transfusion-dependent anaemia patients were enrolled and received deferasirox starting at 10 mg/kg/day. Mean actual dose ± SD over 1 year was 14.70 ± 5.48 mg/kg/day. At week 52, mean LIC ± SD decreased significantly from 15.13 ± 10.72 mg Fe/g dw at baseline to 8.46 ± 6.25 mg Fe/g dw (absolute change from baseline, −6.68 ± 7.02 mg Fe/g dw [95% CI: −7.91, −5.45]; P < 0.0001). Most common drug-related adverse events were gastrointestinal: abdominal discomfort, diarrhoea and nausea (n=6 each). There was one death (pneumonia, not considered drug related).With significant and clinically relevant reductions in iron burden alongside a safety profile similar to that in THALASSA, these data support earlier escalation with higher deferasirox doses in iron-overloaded non-transfusion-dependent anaemia patients.<br />
                                        
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.sciencedirect.com/science/article/pii/S1079979615300103');">
http://www.sciencedirect.com/science/article/pii/S1079979615300103
</span> </p>
                                       
                                </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse10a">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Deferasirox for the treatment of iron overload in non-transfusion-dependent thalassemia
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse10a" class="panel-collapse collapse">
                                    <div class="panel-body">
                                          Non-transfusion-dependent thalassemia (NTDT) defines a group of patients who do not require regular transfusions for survival, but are at significant risk of iron accumulation from underlying disease-related mechanisms distinct from transfusional iron overload. Management of iron overload in NTDT has received little attention compared with that of β-thalassemia major, despite evidence of significant iron-induced complications with advancing age. The efficacy and safety of the iron chelator deferasirox in NTDT has been evaluated in two pilot studies and the first prospective, randomized, placebo-controlled study (THALASSA) of any chelator in NTDT. Treatment with deferasirox for up to 2 years yielded a sustained reduction in iron burden, with a clinically manageable safety profile. Following these trial data, deferasirox is the first iron chelator approved for use in NTDT patients, and with NTDT guidelines now available, physicians are better equipped to achieve effective monitoring and management of iron burden in NTDT.<br />

                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pubmed/24083402');">
http://www.ncbi.nlm.nih.gov/pubmed/24083402
</span> </p>
                                       
                        </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse11a">
                                    <h4 class="panel-title">
                                        <a href="javascript:;" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Use of hydroxyurea and phlebotomy in pediatric patients with hemoglobin sickle cell disease
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse11a" class="panel-collapse collapse">
                                    <div class="panel-body">
                                          Hydroxyurea is an excellent therapeutic agent for the pharmacological induction of HbF in patients with sickle cell disease (SCD). However, all completed clinical trials of hydroxyurea have excluded patients with hemoglobin SC (HbSC) disease. HbSC differs significantly in pathophysiology from HbSS, as HbC does not sickle, but instead causes cellular dehydration which potentiates sickling of HbS. Many severely affected HbSC patients have been placed on hydroxyurea on a case by case basis,but there are no large scale prospective data on safety or efficacy of hydroxyurea in this subset of patients with SCD. Here, we report a case series of 14 pediatric patients with HbSC treated to maximum tolerated dose (MTD) with hydroxyurea. Those who failed to show clinical improvement after at least six months at MTD were offered phlebotomy in addition to hydroxyurea. Five out of 11 patients with HbSC who achieved MTD failed to demonstrate clinical improvement on hydroxyurea. Of the four placed on dual hydroxyurea and  phlebotomy therapy, all showed at least partial clinical improvement. Percent dense red blood cells (%DRBC) were measured via an ADVIA hematology analyzer. A marked rise in percent dense cells preceded clinical complications in three patients. Dual therapy with hydroxyurea and phlebotomy may be an effective approach to patients with HbSC that do not experience improvement with hydroxyurea alone. Monitoring of %DRBC may predict adverse events and aid in assessing hydroxyurea compliance. Large scale clinical trials are needed to evaluate the safety and efficacy of hydroxyurea and hydroxyurea with phlebotomy in patients with HbSC disease.<br/>
                                        
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://ebm.sagepub.com/content/241/7/737.long');">
http://ebm.sagepub.com/content/241/7/737.long
</span> </p>

                                        
                                     </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse12a">
                                    <h4 class="panel-title">
                                        <a href="javascript:;" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Role of iron chelation in improving survival: An integral part of current therapy for myelodysplastic syndromes
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse12a" class="panel-collapse collapse">
                                    <div class="panel-body">
                                          This review article highlights the current role of iron chelation in MDS to optimize survival and quality of life. Its role in specific subtypes of MDS is also discussed.<br/>
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4772398/');">
http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4772398/
</span> </p>

                                      
                        </div>
                                </div>
                            </div>


                        </div>
                        <div id="itp_div" class="displaydiv">
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse11">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                          
                                                Eltrombopag for the treatment of children with persistent and chronic immune thrombocytopenia (PETIT): a randomised, multicentre, placebo-controlled study

                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse11" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> The oral thrombopoietin receptor agonist eltrombopag is approved for treatment of adults with chronic immune thrombocytopenia. In the PETIT trial, we aimed to investigate the efficacy and safety of eltrombopag in children with persistent or chronic immune thrombocytopenia.<br />
                                        <b>Methods:</b> PETIT was a three-part, randomised, multicentre, placebo-controlled study done at 22 centres in the USA, UK, Canada, Spain, France, and the Netherlands. Patients aged 1–17 years with immune thrombocytopenia lasting for 6 months or longer and platelets less than 30 × 10<sup>9</sup> per L who had received at least one previous treatment were enrolled. We enrolled patients into three cohorts consisting of patients aged 12–17, 6–11, and 1–5 years. We established patients' starting doses with an open-label, dose-finding phase with five patients in each cohort. During the dose-finding phase, patients aged 6–17 years started eltrombopag at 25 mg once per day (12•5 mg for those weighing <27 kg) and patients aged 1–5 years received 0•7 mg />kg per day to a maximum of 2 mg/kg unless otherwise approved. We permitted dose adjustments on the basis of platelet response up to a maximum dosage of 75 mg per day. Additional patients were then recruited and randomly assigned (2:1) to receive either eltrombopag or placebo tablets (or oral suspension formulation if aged 1–5 years) once per day for 7 weeks at the previously established doses. Starting doses for the double-blind phase were 37•5 mg/day for patients aged 12–17 years; 50 mg/day for patients weighing 27 kg or more (25 mg for east Asian patients) and 25 mg/day for patients weighing less than 27 kg (12•5 mg once per day for east Asian patients) for patients aged 6–11 years; and 1•5 mg/kg once per day (0•8 mg/kg once per day for east Asian patients) for patients aged 1–5 years. Randomisation was done by the GlaxoSmithKline Registration/Medication Ordering System and both patients and study personnel were masked to treatment assignments. Patients who completed treatment were then enrolled into an open-label phase and all patients could receive up to 24 weeks of eltrombopag. The primary outcome was the proportion of patients achieving a platelet count of 50 × 109 per L or more at least once from weeks 1–6 (days 8 to 43) of the randomised phase of the study in the absence of rescue therapy. We assessed efficacy in the intent-to-treat population, which consisted of all patients assigned to treatment, and we assessed safety in all patients who received at least one dose of study treatment. This trial is registered with ClinicalTrials.gov, number NCT00908037.<br />

                                        <b>Findings:</b> Between Oct 2, 2009, and June 22, 2011, we recruited 15 patients, with five patients in each age cohort, into the open-label dose-finding phase who did not progress into the double-blind phase. From March 17, 2010, to Jan 15, 2013, we randomly assigned 67 patients to treatment, with 45 patients assigned to receive eltrombopag (16 children aged 12–17 years, 19 aged 6–11 years, and ten aged 1–5 years) and 22 to receive placebo (eight children aged 12–17 years, nine aged 6–11 years, and five aged 1–5 years). However, two patients assigned to receive eltrombopag did not receive the study drug and one was lost to follow-up, and one patient assigned to receive placebo was given eltrombopag. From weeks 1 to 6, 28 (62%) patients who received eltrombopag, compared with seven (32%) who received placebo, achieved the primary endpoint of platelet count 50 × 109 per L or more at least once without rescue (odds ratio 4•31, 95% CI 1•39–13•34, p=0•011). The most common adverse events with eltrombopag were headache (13 [30%] patients receiving Eltrombopag vs nine [43%] patients receiving placebo), upper respiratory tract infection (11 [25%] patients vs two [10%] patients), and diarrhoea (seven [16%] patients vs one [5%] patient). Grade 3 or 4 adverse events occurred in five (11%) patients receiving eltrombopag and four (19%) patients receiving placebo, and serious adverse events (four [9%] patients receiving eltrombopag and two (10%) patients receiving placebo) were similarly infrequent in both groups. No thrombotic events or malignancies occurred. Increased alanine aminotransferase concentrations caused two (3%) of 65 patients to discontinue eltrombopag in the open-label phase.
                                        <br />
                                        <b>Interpretation:</b> Our results showed that eltrombopag could be used to increase platelet counts and reduce clinically significant bleeding in children with persistent or chronic immune thrombocytopenia. Prevalence of increased liver laboratory values was similar to that seen in adults.
                                        <br />
                                        
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.thelancet.com/journals/lanhae/article/PIIS2352-3026(15)00114-3/abstract');">
http://www.thelancet.com/journals/lanhae/article/PIIS2352-3026(15)00114-3/abstract
</span> </p>
                                       

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse12">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Eltrombopag for the Treatment of Chronic Idiopathic Thrombocytopenic Purpura
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse12" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> The pathogenesis of chronic idiopathic thrombocytopenic purpura (ITP) involves antibody-mediated platelet destruction and reduced platelet production. Stimulation of platelet production may be an effective treatment for this disorder.
                                        <br /><b>Methods:</b> We conducted a trial in which 118 adults with chronic ITP and platelet counts of less than 30,000 per cubic millimeter who had had relapses or whose platelet count was refractory to at least one standard treatment for ITP were randomly assigned to receive the oral thrombopoietin-receptor agonist eltrombopag (30, 50, or 75 mg daily) or placebo. The primary end point was a platelet count of 50,000 or more per cubic millimeter on day 43.
                                        <br /><b>Results:</b> In the eltrombopag groups receiving 30, 50, and 75 mg per day, the primary end point was achieved in 28%, 70%, and 81% of patients, respectively. In the placebo group, the end point was achieved in 11% of patients. The median platelet counts on day 43 for the groups receiving 30, 50, and 75 mg of eltrombopag were 26,000, 128,000, and 183,000 per cubic millimeter, respectively; for the placebo group the count was 16,000 per cubic millimeter. By day 15, more than 80% of patients receiving 50 or 75 mg of eltrombopag daily had an increased platelet count. Bleeding also decreased during treatment in these two groups. The incidence and severity of adverse events were similar in the placebo and eltrombopag groups.
                                        <br /><b>Conclusions:</b> Eltrombopag increased platelet counts in a dose-dependent manner in patients with relapsed or refractory ITP.

                                         <br /><p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.nejm.org/doi/pdf/10.1056/NEJMoa073275');">
http://www.nejm.org/doi/pdf/10.1056/NEJMoa073275
</span> </p>
                                       

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse13">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Eltrombopag for management of chronic immune thrombocytopenia (RAISE): a 6-month, randomised, phase 3 study
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse13" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Eltrombopag is an oral thrombopoietin receptor agonist for the treatment of thrombocytopenia. We aimed to compare the response to once daily eltrombopag versus placebo in patients with chronic immune thrombocytopenia during a 6-month period.
                                        <br /><b>Methods:</b> We undertook a phase 3, double-blind, placebo-controlled study in adults with previously treated immune thrombocytopenia of more than 6 months' duration who had baseline platelet counts lower than 30,000 per μL. Patients were randomly allocated (in a 2:1 ratio) treatment with local standard of care plus 50 mg eltrombopag or matching placebo once daily for 6 months. Randomisation was done centrally with a computer-generated randomisation schedule and was stratified by baseline platelet count (≤ 15,000 per μL), use of treatment for immune thrombocytopenia, and splenectomy status. Patients, investigators, and those assessing data were masked to allocation. Dose modifications were made on the basis of platelet response. Patients were assessed for response to treatment (defined as a platelet count of 50,000-400,000 per μL) weekly during the first 6 weeks and at least once every 4 weeks thereafter; the primary endpoint was the odds of response to eltrombopag versus placebo. Analysis was by intention to treat. This study is registered at ClinicalTrials.gov, number NCT00370331.
                                        <br /><b>Findings:</b> Between Nov 22, 2006, and July 31, 2007, 197 patients were randomly allocated to treatment groups and were included in the intention-to-treat analysis (135 eltrombopag, 62 placebo). 106 (79%) patients in the eltrombopag group responded to treatment at least once during the study, compared with 17 (28%) patients in the placebo group. The odds of responding were greater in patients in the eltrombopag group compared with those in the placebo group throughout the 6-month treatment period (odds ratio 8•2, 99% CI 3•59-18•73; p<0•0001). 37 (59%) patients receiving eltrombopag reduced concomitant treatment versus ten (32%) patients receiving placebo (p=0•016). 24 (18%) patients receiving eltrombopag needed rescue treatment compared with 25 (40%) patients receiving placebo (p=0•001). Three (2%) patients receiving eltrombopag had thromboembolic events compared with none in patients on placebo. Nine (7%) eltrombopag-treated patients and two (3%) in the placebo group had mild increases in alanine aminotransferase concentration, and five (4%) eltrombopag-treated patients (vs none allocated to placebo) had increases in total bilirubin. Four (7%) patients taking placebo had serious bleeding events, compared with one (<1%) patient treated with eltrombopag.
<br /><b>Interpretation:</b> Eltrombopag is effective for management of chronic immune thrombocytopenia, and could be particularly beneficial for patients who have not responded to splenectomy or previous treatment. These benefits should be balanced with the potential risks associated with eltrombopag treatment.
<br />
                                      <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pubmed/20739054');">
http://www.ncbi.nlm.nih.gov/pubmed/20739054
</span> </p>  
                                        
                                       

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse14">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Eltrombopag restores trilineage hematopoiesis in refractory severe aplastic anemia that can be sustained on discontinuation of drug
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse14" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        About a quarter of patients with severe aplastic anemia remain pancytopenic despite immunosuppressive therapy. We have previously demonstrated that eltrombopag has efficacy in this setting with 44% (11/25) of patients having clinically significant hematologic responses. We now report safety and efficacy data on a further 18 patients and long-term follow-up on the entire cohort of 43 patients. The overall response rate was 17 of 43 patients (40%) at 3 to 4 months, including tri- and bilineage responses. The majority of patients who remained on eltrombopag in an extension study (14/17) continued to show improvement, and 7 eventually had significant increases in neutrophil, red cell, and platelet lineages. Five patients with robust near-normalization of blood counts had drug discontinued at a median of 28.5 months after entry (range, 9-37 months), and all maintained stable counts a median of 13 months (range, 1-15 months) off eltrombopag. Eight patients, including 6 nonresponders and 2 responders, developed new cytogenetic abnormalities on eltrombopag, including 5 with chromosome 7 loss or partial deletion. None evolved to acute myeloid leukemia to date. Eltrombopag is efficacious in a subset of patients with aplastic anemia refractory to immunosuppressive therapy, with frequent multilineage responses and maintenance of normalized hematopoiesis off treatment.
                                        <br />
                                        
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3962161/');">
http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3962161/
</span> </p>  
                                       
     
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse15">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Rituximab as second-line treatment for adult immune (the RITP trial): a multicentre,
                                                randomised, double-blind, placebo-controlled trial
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse15" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Immune thrombocytopenia is characterised by immune-mediated destruction and suboptimum production of platelets. Despite the absence of supporting evidence, rituximab is frequently used off-label in patients with immune thrombocytopenia. We aimed to assess the efficacy of rituximab as compared with placebo as a splenectomy-sparing treatment in patients who were previously treated with corticosteroids.
                                        <br /><b>Methods:</b> In this multicentre, randomised, double-masked, placebo-controlled trial, we enrolled corticosteroid unresponsive adult patients (aged ≥18 years) with primary immune thrombocytopenia and a platelet count of less than 30 × 10<sup>9</sup> platelets per L. Patients were randomly assigned (1:1) to four weekly infusions of 375 mg/m<sup>2</sup> rituximab or placebo. Concurrent treatment with corticosteroids only was allowed during the study. The primary endpoint was rate of treatment failure within 78 weeks—a composite of splenectomy or meeting criteria for splenectomy after week 12 if splenectomy was not done, assessed in all patients who received at least one dose of study treatment. Secondary endpoints were response rates, relapse rates, and duration of response. Efficacy endpoints were assessed with the Kaplan-Meier method. Safety endpoints were assessed in all patients who received at least one dose. This trial is registered with ClinicalTrials.gov, number NCT00344149.
                                        <br /><b>Findings:</b> Between Aug 17, 2006, and June 30, 2011, we enrolled 112 patients. 32 (58%) of 55 patients in the rituximab group and 37 (69%) of 54 patients in the placebo group had treatment failure within 78 weeks (Kaplan-Meier cumulative incidence 46% for rituximab vs 52% for placebo (hazard ratio [HR] 0•89, 95% CI 0•55–1•45; p=0•65). The cumulative incidence of overall response was 81% in the rituximab group versus 73% in the placebo group (p=0•15) and complete response was 58% in the rituximab group versus 50% in the placebo group (p=0•12). Of those achieving an overall response, 68% relapsed in the rituximab group and 78% relapsed in the placebo group, and of those achieving complete response, 50% relapsed in the rituximab group and 62% relapsed in the placebo group. Time to relapse in the rituximab group was longer in patients who achieved overall response (36 vs 7 weeks; p=0•01) but not complete response (76 vs 49 weeks; p=0•19). Rates of bleeding were similar in the two groups (21 [38%] in the rituximab group vs 27 [50%] in the placebo group; p=0•08) as were rates of infection (22 [40%] vs 13 [24%]; p=0•09).
                                        <br /><b>Interpretation:</b> Despite no reduction in the rate of long-term treatment failure with rituximab, a small benefit cannot be ruled out, as suggested by an apparently longer duration of response and numerically higher response rates with rituximab.

                                             <br /><p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(14)61495-1/abstract');">
http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(14)61495-1/abstract
</span> </p>  


                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse16">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Eltrombopag safety and efficacy for primary chronic immune thrombocytopenia in clinical practice
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse16" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Eltrombopag is effective and safe in chronic immune thrombocytopenia (ITP). However, clinical trials may not accurately reflect what happens in clinical practice. We evaluated the efficacy and safety of eltrombopag in primary chronic ITP in a real-world setting.
                                        <br /><b>Methods:</b> 164 primary chronic ITP patients from 40 Spanish centers, who had been treated with eltrombopag, were retrospectively evaluated.
                                        <br /><b>Results:</b> The median age of our cohort (72% women) was 63 years (interquartile range, IQR, 45-75 years). The median time with ITP diagnosis was 81 months (IQR, 30-192 months). The median number of therapies prior to eltrombopag was 3 (IQR, 2-4). At the time of eltrombopag start, 45 patients (30%) were receiving concomitant treatment for ITP. Forty-six patients (30%) had bleeding signs/symptoms the month before treatment start. The median platelet count at eltrombopag initiation was 22 x 10<sup>9</sup>/L (IQR, 8-39 x 10<sup>9</sup>/L). 135 patients (88.8%) achieved a platelet response. The median time to platelet response was 12 days (95% CI, 9-13 days). Maintained platelet response rate during the 15-month period under examination was 75.2%. 28 patients (18.4%) experienced adverse events, mainly grades 1-2.
                                        <br /><b>Conclusions:</b> Eltrombopag is highly effective and well tolerated in unselected patients with primary chronic ITP.



                                       <br /><p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pubmed/26709028');">
http://www.ncbi.nlm.nih.gov/pubmed/26709028
</span> </p>  
                                        
                                        

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse17">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Eltrombopag for children with chronic immune thrombocytopenia (PETIT2): a randomised, multicentre, placebo-controlled trial
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse17" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> The thrombopoietin receptor agonist eltrombopag has been shown to be safe, tolerable, and effective for adults with chronic immune thrombocytopenia. We aimed to investigate the safety and efficacy of eltrombopag for children with chronic immune thrombocytopenia.
                                        <br /><b>Methods:</b> PETIT2 was a two part, randomised, multicentre, placebo-controlled study done at 38 centres in 12 countries (Argentina, Czech Republic, Germany, Hong Kong, Israel, Italy, Russia, Spain, Taiwan, Thailand, UK, and USA). Paediatric patients aged 1–17 years who had chronic immune thrombocytopenia and platelet counts less than 30 × 10<sup>9</sup> per L were randomly assigned (2:1) to receive eltrombopag or placebo. We stratified patients by age into three cohorts (patients aged 12–17 years, 6–11 years, and 1–5 years) before randomly entering them into a 13 week, double-blind period. Randomisation was done by the GlaxoSmithKline Registration and Medication Ordering System and both patients and study personnel were masked to treatment assignments. Patients who were allocated eltrombopag received tablets (except for those aged 1–5 years who received an oral suspension formulation) once per day for 13 weeks. Starting doses for patients aged 6–17 were based on bodyweight, and ethnic origin and ranged between 50 mg/day and 25 mg/day (starting dose for patients aged 1–5 years was 1•2 mg/kg/day or 0•8 mg/kg/day for east Asian patients). Patients who completed the double-blind period entered a 24 week open-label treatment period in which all patients received eltrombopag at either the starting dose (if they were formerly on placebo) or their established dose. The primary outcome was the proportion of patients achieving platelet counts of at least 50 × 10<sup>9</sup> per L in the absence of rescue therapy for 6 or more weeks from weeks 5 to 12 of the double-blind period. The intention-to-treat population included in the efficacy assessment consisted of all patients who were randomly assigned to one of the treatment groups, and the safety population included all patients who received at least one dose of study drug. This trial is registered with ClinicalTrials.gov, number NCT01520909.
                                        <br /><b>Findings:</b> Beginning in March 15, 2012, 92 patients were enrolled, and the trial was completed on Jan 2, 2014. 63 patients were assigned to receive eltrombopag and 29 were assigned to receive placebo. In the double-blind period, three patients discontinued treatment because of adverse events: two patients in the eltrombopag group withdrew because of increased liver aminotransferases and one in the placebo group withdrew because of abdominal haemorrhage. 25 (40%) patients who received eltrombopag compared with one (3%) patient who received placebo achieved the primary outcome of platelet counts of at least 50 × 10<sup>9</sup> per L for 6 of the last 8 weeks of the double-blind period (odds ratio 18•0, 95% CI, 2•3–140•9; p=0•0004). Responses were similar in all cohorts (Eltrombopag vs placebo: 39% vs 10% for patients aged 12–17 years, 42% vs 0% for patients aged 6–11 years, and 36% vs 0% for patients aged 1–5 years). Proportionately fewer patients who received eltrombopag (23 [37%] of 63 patients) had WHO grades 1–4 bleeding at the end of the double-blind period than did those who received placebo (16 [55%] of 29 patients); grades 2–4 bleeding were similar (three [5%] patients who received Eltrombopag vs two [7%] patients who received placebo). During the 24-week open-label treatment period, 70 [80%] of 87 patients achieved platelet counts of 50 × 10<sup>9</sup> per L or more at least once. Adverse events that occurred more frequently with eltrombopag than with placebo included nasopharyngitis (11 [17%] patients), rhinitis (10 [16%] patients), upper respiratory tract infection (7 [11%] patients), and cough (7 [11%] patients). Serious adverse events occurred in five (8%) patients who received eltrombopag and four (14%) who received placebo. Safety was consistent between the open-label and double-blind periods. No deaths, malignancies, or thromboses occurred during the trial.
                                        <br /><b>Interpretation:</b> Eltrombopag, which produced a sustained platelet response in 40% of patients with chronic immune thrombocytopenia, is a suitable therapeutic option for children with chronic symptomatic immune thrombocytopenia. We identified no new safety concerns and few patients discontinued treatment because of adverse events.
                                        <br />
                                        
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(15)61107-2/abstract');">
http://www.thelancet.com/journals/lancet/article/PIIS0140-6736(15)61107-2/abstract
</span> </p>  
                                        
                                        

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse18">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Safety and efficacy of eltrombopag for treatment of chronic immune thrombocytopenia: results of the long-term, open-label EXTEND study
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse18" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Patients with chronic immune thrombocytopenia may have bleeding resulting from low platelet counts. Eltrombopag increases and maintains hemostatic platelet counts; however, to date, outcome has been reported only for treatment lasting ≤ 6 months. This interim analysis of the ongoing open-label EXTEND (Eltrombopag eXTENded Dosing) study evaluates the safety and efficacy of eltrombopag in 299 patients treated up to 3 years. Splenectomized and nonsplenectomized patients achieved platelets ≥50 000/μL at least once (80% and 88%, respectively). Platelets ≥50 000/μL and 2 × baseline were maintained for a median of 73 of 104 and 109 of 156 cumulative study weeks, respectively. Bleeding symptoms (World Health Organization Grades 1-4) decreased from 56% of patients at baseline to 20% at 2 years and 11% at 3 years. One hundred (33%) patients were receiving concomitant treatments at study entry, 69 of whom attempted to reduce them; 65% (45 of 69) had a sustained reduction or permanently stopped ≥1 concomitant treatment. Thirty-eight patients (13%) experienced ≥1 adverse events leading to study withdrawal, including patients meeting protocol-defined withdrawal criteria (11 [4%] thromboembolic events, 5 [2%] exceeding liver enzyme thresholds). No new or increased incidence of safety issues was identified. Long-term treatment with eltrombopag was generally safe, well tolerated, and effective in maintaining platelet counts in the desired range.


                                        <br />
                                         <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.bloodjournal.org/content/121/3/537');">
http://www.bloodjournal.org/content/121/3/537
</span> </p>  
                                        

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="mf_div" class="displaydiv">
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse19">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                       
                                                A pooled analysis of overall survival in COMFORT-I and COMFORT-II, 2 randomized phase III trials of ruxolitinib for the treatment of myelofibrosis

                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse19" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Ruxolitinib, a potent Janus kinase 1/2 inhibitor, resulted in rapid and durable improvements in splenomegaly and disease-related symptoms in the 2 phase III COMFORT studies. In addition, ruxolitinib was associated with prolonged survival compared with placebo (COMFORT-I) and best available therapy (COMFORT-II). We present a pooled analysis of overall survival in the COMFORT studies using an intent-to-treat analysis and an analysis correcting for crossover in the control arms. Overall, 301 patients received ruxolitinib (COMFORT-I, n=155; COMFORT-II, n=146) and 227 patients received placebo (n=154) or best available therapy (n=73). After a median three years of follow up, intent-to-treat analysis showed that patients who received ruxolitinib had prolonged survival compared with patients who received placebo or best available therapy [hazard ratio=0.65; 95% confidence interval (95%CI): 0.46-0.90; P=0.01]; the crossover-corrected hazard ratio was 0.29 (95%CI: 0.13-0.63). Both patients with intermediate-2- or high-risk disease showed prolonged survival, and patients with high-risk disease in the ruxolitinib group had survival similar to that of patients with intermediate-2-risk disease in the control group. The Kaplan-Meier estimate of overall survival at week 144 was 78% in the ruxolitinib arm, 61% in the intent-to-treat control arm, and 31% in the crossover-adjusted control arm. While larger spleen size at baseline was prognostic for shortened survival, reductions in spleen size with ruxolitinib treatment correlated with longer survival. These findings are consistent with previous reports and support that ruxolitinib offers a survival benefit for patients with myelofibrosis compared with conventional therapies.
                                        <br />
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4800694/');">
http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4800694/
</span> </p>  

                                       

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse20">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                A Double-Blind, Placebo-Controlled Trial of Ruxolitinib for Myelofibrosis
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse20" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Ruxolitinib, a selective inhibitor of Janus kinase (JAK) 1 and 2, has clinically significant activity in myelofibrosis.
                                        <br /><b>Methods:</b> In this double-blind trial, we randomly assigned patients with intermediate-2 or high-risk myelofibrosis to twice-daily oral ruxolitinib (155 patients) or placebo (154 patients). The primary end point was the proportion of patients with a reduction in spleen volume of 35% or more at 24 weeks, assessed by means of magnetic resonance imaging. Secondary end points included the durability of response, changes in symptom burden (assessed by the total symptom score), and overall survival.
                                        <br /><b>Results:</b> The primary end point was reached in 41.9% of patients in the ruxolitinib group as compared with 0.7% in the placebo group (P<0.001). a reduction in spleen volume was maintained in patients who received ruxolitinib; 67.0% of the patients with a response had the response for 48 weeks or more. There was an improvement of 50% or more in the total symptom score at 24 weeks in 45.9% of patients who received ruxolitinib as compared with 5.3% of patients who received placebo (p<0.001). Thirteen deaths occurred in the ruxolitinib group as compared with 24 deaths in the placebo group (hazard ratio, 0.50; 95% confidence interval, 0.25 to 0.98; P = 0.04). The rate of discontinuation of the study drug because of adverse events was 11.0% in the ruxolitinib group and 10.6% in the placebo group. Among patients who received ruxolitinib, anemia and thrombocytopenia were the most common adverse events, but they rarely led to discontinuation of the drug (in one patient for each event). Two patients had transformation to acute myeloid leukemia; both were in the ruxolitinib group.
<br /><b>Conclusions:</b> Ruxolitinib, as compared with placebo, provided significant clinical benefits in patients with myelofibrosis by reducing spleen size, ameliorating debilitating myelofibrosis-related symptoms, and improving overall survival. These benefits came at the cost of more frequent anemia and thrombocytopenia in the early part of the treatment period.
<br />
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.nejm.org/doi/pdf/10.1056/NEJMoa1110557');">
http://www.nejm.org/doi/pdf/10.1056/NEJMoa1110557
</span> </p>  

                                       

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse21">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                JAK Inhibition with Ruxolitinib versus Best Available Therapy for Myelofibrosis
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse21" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Treatment options for myelofibrosis are limited. We evaluated the efficacy and safety of ruxolitinib, a potent and selective Janus kinase (JAK) 1 and 2 inhibitor, as compared with the best available therapy, in patients with myelofibrosis.
                                        <br /><b>Methods:</b> We assigned 219 patients with intermediate-2 or high-risk primary myelofibrosis, post–polycythemia vera myelofibrosis, or post–essential thrombocythemia myelofibrosis to receive oral ruxolitinib or the best available therapy. The primary end point and key secondary end point of the study were the percentage of patients with at least a 35% reduction in spleen volume at week 48 and at week 24, respectively, as assessed with the use of magnetic resonance imaging or computed tomography.
                                        <br /><b>Results:</b> A total of 28% of the patients in the ruxolitinib group had at least a 35% reduction in spleen volume at week 48, as compared with 0% in the group receiving the best available therapy (P<0.001); the corresponding percentages at week 24 were 32% and 0% (p<0.001). At 48 weeks, the mean palpable spleen length had decreased by 56% with ruxolitinib but had increased by 4% with the best available therapy. The median duration of response with ruxolitinib was not reached, with 80% of patients still having a response at a median follow-up of 12 months. Patients in the ruxolitinib group had an improvement in overall quality-of-life measures and a reduction in symptoms associated with myelofibrosis. The most common hematologic abnormalities of grade 3 or higher in either group were thrombocytopenia and anemia, which were managed with a dose reduction, interruption of treatment, or transfusion. One patient in each group discontinued treatment owing to thrombocytopenia, and none discontinued owing to anemia. Nonhematologic adverse events were rare and mostly grade 1 or 2. Two cases of acute myeloid leukemia were reported with the best available therapy.
<br /><b>Conclusions:</b> Continuous ruxolitinib therapy, as compared with the best available therapy, was associated with marked and durable reductions in splenomegaly and disease-related symptoms, improvements in role functioning and quality of life, and modest toxic effects. An influence on overall survival has not yet been shown.
<br />
                                        
                                         <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.nejm.org/doi/pdf/10.1056/NEJMoa1110556');">
http://www.nejm.org/doi/pdf/10.1056/NEJMoa1110556
</span> </p>  
                                       

       
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse22">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Safety and Efficacy of INCB018424, a JAK1 and JAK2 Inhibitor, in Myelofibrosis
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse22" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Myelofibrosis is a Philadelphia chromosome–negative myeloproliferative neoplasm associated with cytopenias, splenomegaly, poor quality of life, and shortened survival. About half of patients with myelofibrosis carry a gain-of-function mutation in the Janus kinase 2 gene (JAK2 V617F) that contributes to the pathophysiology of the disease. INCB018424 is a potent and selective Janus kinase 1 (JAK1) and JAK2 inhibitor.
                                        <br /><b>Methods:</b> We conducted a phase 1−2 trial of INCB018424 in patients with JAK2 V617F−positive or JAK2 V617F−negative primary myelofibrosis, post–essential thrombocythemia myelofibrosis, or post–polycythemia vera myelofibrosis.
                                        <br /><b>Results:</b> A total of 153 patients received INCB018424 for a median duration of more than 14.7 months. The initial dose-escalation phase established 25 mg twice daily or 100 mg once daily as maximum tolerated doses, on the basis of reversible thrombocytopenia. A dose-dependent suppression of phosphorylated signal transducer and activator of transcription 3 (STAT3), a marker of JAK signaling, was demonstrated in patients with wild-type JAK2 and in patients with the JAK2 V617F mutation. We studied additional doses and established that a 15-mg twice-daily starting dose, followed by individualized dose titration, was the most effective and safest dosing regimen. At this dose, 17 of 33 patients (52%) had a rapid objective response (≥50% reduction of splenomegaly) lasting for 12 months or more, and this therapy was associated with grade 3 or grade 4 adverse events (mainly myelosuppression) in less than 10% of patients. Patients with debilitating symptoms, including weight loss, fatigue, night sweats, and pruritus, had rapid improvement. Clinical benefits were associated with a marked diminution of levels of circulating inflammatory cytokines that are commonly elevated in myelofibrosis.
                                        <br /><b>Conclusions:</b> INCB018424 was associated with marked and durable clinical benefits in patients with myelofibrosis for whom no approved therapies existed.
                                        <br />
                                        
                                         <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.nejm.org/doi/pdf/10.1056/NEJMoa1002028');">
http://www.nejm.org/doi/pdf/10.1056/NEJMoa1002028
</span> </p>  


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="pv_div" class="displaydiv">
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse23">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                             
                                                How We Identify and Manage Patients with Inadequately Controlled Polycythemia Vera

                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse23" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Polycythemia vera (PV) is a chronic myeloproliferative neoplasm (MPN) characterized by an overactive Janus kinase/signal transducer and activator of transcription (JAK/STAT) pathway through mutations in JAK2 exons 12 or 14 (JAK2 V617F). The dominant clinical characteristics include erythrocytosis (with or without leukocytosis/thrombocytosis), thrombotic events, and symptoms. Increased risk of mortality is mainly caused by thrombotic events and progression to postpolycythemia vera myelofibrosis (PPV-MF) or secondary acute myeloid leukemia (sAML). The most important prognostic factors include age and a history of thrombotic events, although recent evidence has indicated that leukocytosis and additional cytogenetic aberrations may also be of significant prognostic value. First-line therapies include aspirin and phlebotomies, which significantly reduce the incidence of thrombotic events and prolong survival. Cytoreductive treatment with hydroxyurea (approved) and conventional or pegylated interferon-α (effective, but not approved in many countries) is initiated for high-risk or inadequately controlled disease, e.g., uncontrolled hematocrit, leukocytosis, thrombocytosis, thrombotic events, splenomegaly, or symptoms. However, some patients may not receive initial benefit from first-line therapy or may become resistant or intolerant in due course. Although second-line treatment options are limited, clinical trials have shown the efficacy of ruxolitinib toward improving blood counts, enlarged spleen, and symptoms and potentially reducing thrombotic events. Identification of patients with uncontrolled PVis important for clinical care, as such patients have a high risk of complications, and future studies with JAK inhibitors or other agents alone or in combination are needed to test their potential to reduce rates of thrombotic events and transformation to PPV-MF or sAML.
                                        <br />
                                        
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pubmed/26894383');">
http://www.ncbi.nlm.nih.gov/pubmed/26894383
</span> </p>  
                                        

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse24">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                Ruxolitinib versus Standard Therapy for the Treatment of Polycythemia Vera
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse24" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Ruxolitinib, a Janus kinase (JAK) 1 and 2 inhibitor, was shown to have a clinical benefit in patients with polycythemia vera in a phase 2 study. We conducted a phase 3 open-label study to evaluate the efficacy and safety of ruxolitinib versus standard therapy in patients with polycythemia vera who had an inadequate response to or had unacceptable side effects from hydroxyurea.
                                        <br /><b>Methods:</b> We randomly assigned phlebotomy-dependent patients with splenomegaly, in a 1:1 ratio, to receive ruxolitinib (110 patients) or standard therapy (112 patients). The primary end point was both hematocrit control through week 32 and at least a 35% reduction in spleen volume at week 32, as assessed by means of imaging.
                                        <br /><b>Results:</b> The primary end point was achieved in 21% of the patients in the ruxolitinib group versus 1% of those in the standard-therapy group (P<0.001). hematocrit control was achieved in 60% of patients receiving ruxolitinib and 20% of those receiving standard therapy; 38% and 1% of patients in the two groups, respectively, had at least a 35% reduction in spleen volume. a complete hematologic remission was achieved in 24% of patients in the ruxolitinib group and 9% of those in the standard-therapy group (p=0.003); 49% versus 5% had at least a 50% reduction in the total symptom score at week 32. in the ruxolitinib group, grade 3 or 4 anemia occurred in 2% of patients, and grade 3 or 4 thrombocytopenia occurred in 5%; the corresponding percentages in the standard-therapy group were 0% and 4%. herpes zoster infection was reported in 6% of patients in the ruxolitinib group and 0% of those in the standard-therapy group (grade 1 or 2 in all cases). Thromboembolic events occurred in one patient receiving ruxolitinib and in six patients receiving standard therapy.
<br /><b>Conclusions:</b> In patients who had an inadequate response to or had unacceptable side effects from hydroxyurea, ruxolitinib was superior to standard therapy in controlling the hematocrit, reducing the spleen volume, and improving symptoms associated with polycythemia vera.
<br />
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.nejm.org/doi/pdf/10.1056/NEJMoa1409002');">
http://www.nejm.org/doi/pdf/10.1056/NEJMoa1409002
</span> </p>  
                                        
                                        

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" data-toggle="collapse" data-parent="#accordion" data-target="#collapse25">
                                    <h4 class="panel-title">
                                        <a href="#" onclick="togglePreread(this);">

                                            <div class="Pre_Txt_Close">
                                                A Phase 2 Study of Ruxolitinib, an Oral JAK1 and JAK2 Inhibitor, in Patients With Advanced Polycythemia Vera Who Are Refractory or Intolerant to Hydroxyurea
                                            </div>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapse25" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <b>Background:</b> Polycythemia vera (PV) is a myeloproliferative neoplasm associated with somatic gain-of-function mutations of Janus kinase-2 (JAK2). Therapeutic options are limited in patients with advanced disease. Ruxolitinib, an oral JAK1/JAK2 inhibitor, is active in preclinical models of PV. The long-term efficacy and safety of ruxolitinib in patients with advanced PV who are refractory or intolerant to hydroxyurea were studied in a phase 2 trial.
                                        <br /><b>Methods:</b> Response was assessed using modified European LeukemiaNet criteria, which included a reduction in hematocrit to <45% without phlebotomy, resolution of palpable splenomegaly, normalization of white blood cell and platelet counts, and reduction in pv-associated symptoms.
<br /><b>Results:</b> Thirty-four patients received ruxolitinib for a median of 152 weeks (range, 31 weeks-177 weeks) or 35.0 months (range, 7.1 months-40.7 months). Hematocrit <45% without phlebotomy was achieved in 97% of patients by week 24.Only 1 patient required a phlebotomy after week 4. Among patients with palpable splenomegaly at baseline, 44% and 63%, respectively, achieved non-palpable spleen measurements at weeks 24 and 144. Clinically meaningful improvements in pruritus, night sweats, and bone pain were observed within 4 weeks of the initiation of therapy and maintained with continued treatment. Ruxolitinib treatment also reduced elevated levels of inflammatory cytokines and granulocyte activation. Thrombocytopenia and anemia were the most common adverse events. Thrombocytopenia of ≥ grade 3 or anemia of ≥ grade 3 (according to National Cancer Institute Common Terminology Criteria for Adverse Events, version 3.0) occurred in 3 patients each (9%) (1 patient had both) and were managed with dose modification.
<br /><b>Conclusions:</b> Ruxolitinib was generally well tolerated and provided rapid and durable clinical benefits in patients with advanced PV who were refractory or intolerant to hydroxyurea.
<br />
                                        <p class="P_wrdrap"> Read More at: <span class="readmore" onclick="askConf('http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4231215/pdf/cncr0120-0513.pdf');">
http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4231215/pdf/cncr0120-0513.pdf
</span> </p>  
                                        


                                    </div>
                                </div>
                            </div>
                        </div>
        </div>
    </div>
</div>
    <MENA:Footer ID="Footer" runat="server" />
    <MENA:Menu ID="Menu" runat="server" />
    <MENA:Modals ID="Modals" runat="server" />

    <script src="ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-modal.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-collapse.min.js" type="text/javascript"></script>
    <script src="assets/js/application.js" type="text/javascript"></script>
    <script src="assets/service/appData.js"></script>
    <script src="assets/service/interface.js"></script>
    <script src="assets/service/ServiceData.js"></script>
    <script src="assets/js/custom/validation.js"></script>
    <script src="assets/js/custom/ready.js"></script>
    <script src="assets/js/custom/common.js"></script>
    <script type="text/javascript">
        $('.collapse').on('shown.bs.collapse', function () {
            $(this).parent().find(".right-arrow").find("img").attr("src", "assets/images/down-arrow.png");
            $(this).parent().find(".panel-heading").css({
                "color": "#a11c1c",
                "background-color": "#fff"
            });
        }).on('hidden.bs.collapse', function () {
            $(this).parent().find(".right-arrow").find("img").attr("src", "assets/images/right-arrow.png");
            $(this).parent().find(".panel-heading").css({
                "color": "#fff",
                "background-color": "#a11c1c"
            });
        });

      
    </script>
</body>
</html>
