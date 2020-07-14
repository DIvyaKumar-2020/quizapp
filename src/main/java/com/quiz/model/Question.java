package com.quiz.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.sun.istack.NotNull;

@Entity(name="question")
@Table(name = "questions")
public class Question {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int qid;
	@NotNull
	private String content;
	
	@OneToMany(mappedBy = "question", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<Answers> answers;
	
	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "id", nullable = false)
	private Category category;
	
	public Question() {

	}

	

	public Question(String content, List<Answers> answers, Category category) {
		super();
		this.content = content;
		this.answers = answers;
		this.category = category;
	}



	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<Answers> getAnswers() {
		return answers;
	}

	public void setAnswers(List<Answers> answers) {
		this.answers = answers;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	/*@Override
	public String toString() {
		return "Question [qid=" + qid + ", content=" + content + ", answers=" + answers + ", category=" + category
				+ "]";
	}*/
	
}
