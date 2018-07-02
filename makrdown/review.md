# Edit Review

## Paper ID


## Paper Title
CROSS-MODAL EMBEDDINGS FOR VIDEO AND AUDIO RETRIEVAL

## Track
ICME2018

## REVIEW QUESTIONS
1. Overall Rating
    - [ ] Enthusiastically Accept
    - [ ] Accept
    - [ ] Weak Accept
    - [ ] Borderline
    - [x] Weak Reject
    - [ ] Reject

2. Relevance: How relevant is the topic of this paper to ICME?
    - [x] Very Relevant
    - [ ] Relevant
    - [ ] Neutral
    - [ ] Slightly Not Relevant
    - [ ] Not Relevant

3. Novelty: How Novel is the paper's approach.
    - [ ] Trailblazing
    - [ ] Very Novel
    - [ ] Novel
    - [ ] Some Novel Component
    - [x] Minor Tweak of Prior Scheme
    - [ ] Not Novel

4. Technical Strength: Is the paper technically sound and correct?
    - [ ] Excellent Technical Quality
    - [x] Technically Solid
    - [ ] Minor flaws but conclusions still believable
    - [ ] Significant flaws that may call results into question
    - [ ] Severely flawed

5. Presentation
    - [ ] Excellent
    - [x] Well written. Small errors that are correctable
    - [ ] Could benefit from revision
    - [ ] Significant errors that will be difficult to overcome
    - [ ] Difficult to read

6. Reviewer Confidence
    - [ ] Very comfortable and know much of the related work (my area)
    - [x] Comfortable reviewing the paper (close to my area)
    - [ ] Somewhat comfortable reviewing it (but not my area)
    - [ ] Pretty difficult to review (way out of my area)

7. Award quality
    - [ ] Strong consideration for award (top 10% of papers at conference)
    - [ ] Consideration for award (top 20% of papers at conference)
    - [x] Not award quality

8. Double blind rules
    - [x] This paper conforms to the double blind rules (author identity hidden)
    - [ ] This paper does NOT conform to the double blind rules (author identity evident) 

9. Detailed Comments

    After reading this paper thoroughly, I shall weak reject this paper to ICME2018 as the idea of seeking a joint embedding between two modolities is not original. This paper's approachs of solving multi-modal retrieval challenge is a bit rough which is a baseline. Below is my brief abstract of this paper.

    This paper try to solve the challenge of video and audio retrieval based on the dataset Youtube-8M from [Kaggle](https://www.kaggle.com/c/youtube8m). It apply two multi-layer perceptrons (MLPs) to both the image features from video frames and audio features from video and compute their output cosine similarity. And the paper exploits video label by applying classification regularization. At experiments, the author(s) only use video-level visual features and audio features which is the average pooling of frame-lelvel features and second-level audio features to achieve as a baseline. 
    
    Although the approach is simple and the rough features representation, the goal for this paper is significant to handle the great challenge of video-audio retrieval. Below is my brief comments for the paper.
    
    * Disadvantages:
        * A spell error in **Abstract** `dow) level` and some ambiguous meanings appear in **Abstract** last sentence. `to retrieve the most similar videos`. I think the authors want to express that `to retrive the most similar one from the other modility`.
        * Video-level feature is rough which may lose temporal information. The author(s) shall exploit the temporal infomation of frames and second-level audio.
        * The approach of how to extract audio feature is not to be mentioned in more detail.
        * The author should talk more about the qualitative performance in Subsection 5.3, such as where 6,000-video list from and how to extract their features.

    * Advantages:
        * The advantage of this paper is that it exploits the video labels information by classification regularization.
        * Another advantage is that the source code and trained model used in this paper is publicly available.
        * The similarity loss and classification loss are sound.
        * Good conclusion.

    Overall, I weakly reject this paper for its idea not original enough and approach simply serves as a baseline.

10. Comments to Program Chair
