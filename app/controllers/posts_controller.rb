class PostsController < ApplicationController
  def new
	# 空のモデルをビューに渡す
	@post = Post.new
  end

		# 以下を追加

	def create
		# ストロングパラメーターを使用
		post = Post.new(post_params)
		# DBへ保存する
		post.save
		# トップ画面へリダイレクト
		redirect_to '/top'
	end

  private
  def post_params
  		params.require(:post).permit(:title, :body)
  end
end
