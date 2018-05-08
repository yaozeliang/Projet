
from sklearn.decomposition import PCA
from sklearn.lda import LDA
from sklearn import datasets
import matplotlib.pyplot as plt
iris=datasets.load_iris()
X=iris.data
y=iris.target

target_names=iris.target_names
pca=PCA(n_components=2)
a1=pca.fit(X,y).transform(X)
lda=LDA(n_components=2)
a2=lda.fit(X,y).transform(X)



plt.figure()
colors=['blue','red','green']
lw=2
for color,i,target_name in zip(colors,[0,1,2],target_names):
    plt.scatter(a1[y==i,0],a1[y==i,1],color=color,label=target_name)
plt.legend()
plt.title('PCA of IRIS dataset')
plt.figure()

for color,i,target_name in zip(colors,[0,1,2],target_names):
    plt.scatter(a2[y==i,0],a2[y==i,1],color=color,label=target_name)
plt.legend()
plt.title('LDA OF IRIS dataset')
plt.show()

