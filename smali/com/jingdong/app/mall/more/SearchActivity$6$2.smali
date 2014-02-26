.class Lcom/jingdong/app/mall/more/SearchActivity$6$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity$6;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$2;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$6$2;->this$1:Lcom/jingdong/app/mall/more/SearchActivity$6;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity$6;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity$6;->access$0(Lcom/jingdong/app/mall/more/SearchActivity$6;)Lcom/jingdong/app/mall/more/SearchActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->showHotKeyWords()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$2(Lcom/jingdong/app/mall/more/SearchActivity;)V

    .line 263
    return-void
.end method
