#--
# Copyright (c) 2010-2011 Michael Berkovich
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++

WillFilter::Engine.routes.draw do
  match 'filter/index' => 'filter#index', :via => [:get,:post]
  match 'filter/add_condition' => 'filter#add_condition', :via => [:get,:post]
  match 'filter/update_condition' => 'filter#update_condition', :via => [:get,:post]
  match 'filter/remove_condition' => 'filter#remove_condition', :via => [:get,:post]
  match 'filter/remove_all_conditions' => 'filter#remove_all_conditions', :via => [:get,:post]
  match 'filter/load_filter' => 'filter#load_filter', :via => [:get,:post]
  match 'filter/save_filter' => 'filter#save_filter', :via => [:get,:post]
  match 'filter/update_filter' => 'filter#update_filter', :via => [:get,:post,:put]
  match 'filter/delete_filter' => 'filter#delete_filter', :via => [:get,:post,:delete]

  match 'calendar' => 'calendar#index', :via => [:get,:post]
  match 'calendar/index' => 'calendar#index', :via => [:get,:post]

  match 'exporter' => 'exporter#index', :via => [:get,:post]
  match 'exporter/index' => 'exporter#index', :via => [:get,:post]
  match 'exporter/export' => 'exporter#export', :via => [:get,:post]

  root :to => "filter#index", :via => [:get,:post]
end
