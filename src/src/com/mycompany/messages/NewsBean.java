package com.mycompany.messages;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * This class maintains a list of NewsItemBean objects. It's
 * only intended as an example. A real implementation would
 * use a database to keep track of the objects instead.
 *
 * @author Hans Bergsten, Gefion Software <hans@gefionsoftware.com>
 * @version 1.0
 */
public class NewsBean implements Serializable {
    private List newsItems = new ArrayList();
    private int[] idSequence = new int[1];
    
    /**
     * Creates a new instance and fills it with a few sample
     * news items.
     */
    public NewsBean() {
        addDefaultItems();
    }
    
    /**
     * Returns an array of all items.
     */
    public NewsItemBean[] getNewsItems() {
	NewsItemBean[] a = null;
        synchronized (newsItems) {
	    a = (NewsItemBean[])
		newsItems.toArray(new NewsItemBean[newsItems.size()]);
        }
        return a;
    }

    /**
     * Adds a news item to the list.
     */
    public void setNewsItem(NewsItemBean newsItem) {
        synchronized (idSequence) {
            newsItem.setId(idSequence[0]++);
        }
	synchronized (newsItems) {
	    newsItems.add(newsItem);
	}
    }
    
    /**
     * Removes the news item with the specified id.
     */
    public void removeNewsItem(int id) {
        synchronized (newsItems) {
            for (int i = 0; i < newsItems.size(); i++) {
                NewsItemBean item = (NewsItemBean) newsItems.get(i);
                if (id == item.getId()) {
                    newsItems.remove(i);
                    break;
                }
            }
        }
    }
    
    /**
     * Creates sample news items and adds them to the list.
     */
    private void addDefaultItems() {
        NewsItemBean item = new NewsItemBean();
	item.setCategory("JSF");
        item.setMsg("O'Reilly's JSF book available now!");
        item.setPostedBy("Hans Bergsten");
        setNewsItem(item);

        item = new NewsItemBean();
        item.setCategory("JSP");
        item.setMsg("3rd edition of O'Reilly JSP book released!");
        item.setPostedBy("Hans Bergsten");
        setNewsItem(item);
        
        item = new NewsItemBean();
        item.setCategory("Servlet");
        item.setMsg("Servets and JSP: a powerful duo.");
        item.setPostedBy("Hans Bergsten");
        setNewsItem(item);
    }
}
