package com.quiz.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity(name = "answers")
@Table(name = "answers")
public class Answers {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int aid;
	private String content;
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "qid", nullable = false)
	private Question question;
	private boolean correct;

	public Answers() {

	}

	public Answers(String content, Question question, boolean correct) {
		super();
		this.content = content;
		this.question = question;
		this.correct = correct;
	}



	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}

	/*@Override
	public String toString() {
		return "Answers [aid=" + aid + ", content=" + content + ", question=" + question + ", correct=" + correct + "]";
	}*/

}
